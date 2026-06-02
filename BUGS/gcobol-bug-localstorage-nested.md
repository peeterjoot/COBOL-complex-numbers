# [cobol] Subprogram's LOCAL-STORAGE work area reads uninitialized when the subprogram is CALLed from within another subprogram

> DRAFT — confirmed real and distinct from the COMP-2 subtraction bug, but it is
> a stack-state-dependent uninitialized read that I have not been able to reduce
> to a small deterministic standalone case. Filing notes below.

- **File at:** https://gcc.gnu.org/bugzilla — Product **gcc**, Component **cobol**
- **Version:** 15.2.0  **Target:** aarch64-linux-gnu
- **Compiler:** `gcobol (Ubuntu 15.2.0-16ubuntu1) 15.2.0`

## Description

A subprogram (`GARMULT`) that declares its work area in `LOCAL-STORAGE`,
computes into it via nested `CALL`s, then `MOVE`s that group to a `LINKAGE`
output, returns the output **unwritten** — filled with the `LOCAL-STORAGE`
initial space bytes (`0x20…`, read back as `1.2026940033998137E-153` for a
`COMP-2` field) — when it is itself `CALL`ed from within another subprogram
(`main -> GARSYM -> GARMULT`), after sufficient prior call activity.

Changing only its storage section from `LOCAL-STORAGE` to `WORKING-STORAGE`,
with no logic change, makes it correct and deterministic (safe here: `GARMULT`
is not re-entrant).

## Confirmed distinct from the COMP-2 subtraction bug

The complex primitives also contain COMP-2 subtraction (a separate bug). To
rule that out, all subtraction-bearing ops were forced to their
arithmetically-correct form, and then ONLY `GARMULT`'s storage class was
varied, in the full project:

- `GARMULT` in `WORKING-STORAGE`  -> symmetric/antisymmetric products correct.
- `GARMULT` in `LOCAL-STORAGE`    -> products are `1.2e-153` garbage.

Same sources, same arithmetic, only the storage class differs. So this is a
real, separate miscompile.

## It is a stack-state-dependent uninitialized read

Against the *same* shared libraries (arithmetic correct, `GARMULT` in
`LOCAL-STORAGE`):

- A minimal driver that does almost nothing before the call
  (`MOVE 3 TO A-SC; CALL GA-SYMMETRIC-RETURN USING A,A,R`) returns the **correct**
  result (`R-SC = 18`).
- The full driver, which performs many `GARMULT` calls before reaching the
  symmetric product, returns **garbage** (`1.2e-153`).

i.e. the `LOCAL-STORAGE` output is sometimes left at its uninitialized fill; a
quiet call history happens to read correct/zero values, a busy one reads stale
space bytes. `WORKING-STORAGE` (statically zero/VALUE-initialized) is immune.

## What was ruled out (negative results, for triage)

While reducing the real `GARMULT` (in `LOCAL-STORAGE`, full project), the bug
still reproduced after removing each of: the grade-selection `IF` chain; the
`COPY CMPXLBRY` call-name constants; dynamic vs literal `CALL`; extra
`LOCAL-STORAGE` items; all but one nested `CALL`.

Hand-built standalone replicas (`main -> MID -> WORKER -> LEAF`, group `COMP-2`
items, separate shared libraries, dynamic calls through `VALUE`-initialized
`LOCAL-STORAGE` constants) do **not** reproduce — they read lucky-correct
values, consistent with the stack-state dependence above. This is why a tiny
deterministic reproducer has been elusive.

## Reproducer (project, until a minimal case is found)

Project: COBOL-complex-numbers, `GA20.v0.1` (+ sibling `CMPXLBRY.v0.2`).

```
$ make && ./out/mult
```

Symmetric/antisymmetric products print `1.2e-153` instead of the expected
multivector values. Toggle in `GCWA.cpy`:
- `>>DEFINE GCOBOL-WORKAROUNDS AS 1` — `GARMULT` in `WORKING-STORAGE`: correct.
- `>>DEFINE GCOBOL-WORKAROUNDS AS 0` — original `LOCAL-STORAGE`: reproduces.

(Note: `GCWA` also toggles the COMP-2 subtraction workaround; to demonstrate
*this* bug in isolation, hold the complex ops at their correct arithmetic and
flip only `GARMULT`'s storage class.)

## Workaround

Declare the affected subprogram's work area in `WORKING-STORAGE` instead of
`LOCAL-STORAGE` (valid only where the subprogram is not re-entrant).
