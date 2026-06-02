# [cobol] Floating-point (COMP-1/COMP-2) subtraction in COMPUTE/SUBTRACT returns a stale temporary instead of the difference

- **File at:** https://gcc.gnu.org/bugzilla — Product **gcc**, Component **cobol**
- **Product:** gcc
- **Component:** cobol
- **Version:** 15.2.0
- **Host/Target:** aarch64-linux-gnu
- **Compiler:** `gcobol (Ubuntu 15.2.0-16ubuntu1) 15.2.0`

## Description

Subtraction whose result is `USAGE COMP-2` (FLOAT-LONG) or `COMP-1` (FLOAT-SHORT)
does not compute the difference. The destination instead receives a stale
value — whatever happened to be in the result temporary, or 0 when nothing
preceded it.

This affects:
- the binary `-` operator in `COMPUTE`,
- the unary minus `-(expr)`, and
- the `SUBTRACT` verb.

Addition, multiplication and division on the same operands are correct, and
subtraction on packed-decimal (`PIC S9(n)V9(m)`) and binary-integer (`COMP-5`)
operands is correct — only binary floating point is affected.

## Steps to reproduce

`subbug.cob` (fixed form):

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBBUG.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A COMP-2 VALUE 9.
       01 B COMP-2 VALUE 1.
       01 R COMP-2.
       PROCEDURE DIVISION.
           COMPUTE R = A - B
           DISPLAY 'COMPUTE  A - B      = ' R '   expected 8'
           SUBTRACT B FROM A GIVING R
           DISPLAY 'SUBTRACT B FROM A   = ' R '   expected 8'
           COMPUTE R = A + (B * -1)
           DISPLAY 'COMPUTE  A + (B*-1) = ' R '   expected 8'
           GOBACK.
```

```
$ gcobol -O0 -main -o subbug subbug.cob && ./subbug
COMPUTE  A - B      = 0   expected 8
SUBTRACT B FROM A   = 0   expected 8
COMPUTE  A + (B*-1) = 8   expected 8
```

## Expected vs actual

- **Expected:** all three print 8.
- **Actual:** the two subtractions print 0; the algebraically-equivalent
  `A + (B * -1)` is correct.

## The "stale temporary" nature

If a *different* subtraction precedes it, the broken one returns that earlier
value rather than 0. With `COMPUTE R = 100 - 50` (→ 50) executed first, a
following `COMPUTE R = A - B` (A=9, B=1) prints **50**, not 8. So the result of
the subtraction is never stored; the destination reads an uninitialized /
previous temporary.

## Scope

Single program, `COMPUTE x = a - b` with variable operands a=9, b=1:

| result type                | result        |
|----------------------------|---------------|
| `COMP-2` (FLOAT-LONG)      | **wrong (0)** |
| `COMP-1` (FLOAT-SHORT)     | **wrong (0)** |
| `PIC S9(5)V9(2)` (packed)  | correct (8)   |
| `PIC S9(9) COMP-5` (int)   | correct (8)   |

Reproduces at `-O0` through `-O3`.

## Workaround

Express subtraction as addition of a negated product:
- `a - b`   ->  `a + (b * -1)`
- `-(x)`    ->  `(x) * -1`
