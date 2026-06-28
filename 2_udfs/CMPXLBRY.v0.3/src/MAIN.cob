       IDENTIFICATION DIVISION.
       PROGRAM-ID.    MAIN.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       COPY CREPOS.
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
        COPY CTYPES.
       01  A       TYPE COMPLEX-T.
       01  B       TYPE COMPLEX-T.
       01  C       TYPE COMPLEX-T.
       01  T       TYPE COMPLEX-T.
       01  LS-RVAL TYPE REAL-T.
       01  LS-S    TYPE REAL-T.
       01  LS-LEN  TYPE STATUS-T.
       01  LS-LABEL PIC X(20).
       01  LS-FMT   PIC X(27).
       PROCEDURE DIVISION.

      * A = (1,2)
           MOVE 1 TO A::CT-RE
           MOVE 2 TO A::CT-IM
           MOVE A::CT-RE TO C::CT-RE
           MOVE A::CT-IM TO C::CT-IM
           MOVE 'A' TO LS-LABEL
           PERFORM SHOW-C

      * B = (3,4)
           MOVE 3 TO B::CT-RE
           MOVE 4 TO B::CT-IM
           MOVE B::CT-RE TO C::CT-RE
           MOVE B::CT-IM TO C::CT-IM
           MOVE 'B' TO LS-LABEL
           PERFORM SHOW-C

      * C = A + B
           MOVE FUNCTION COMPLEX-ADD(A, B) TO C
           MOVE 'A + B' TO LS-LABEL
           PERFORM SHOW-C

      * C = B - A
           MOVE FUNCTION COMPLEX-SUB(B, A) TO C
           MOVE 'B - A' TO LS-LABEL
           PERFORM SHOW-C

      * C = A^*
           MOVE FUNCTION COMPLEX-CONJUGATE(A) TO C
           MOVE 'A.CONJUGATE()' TO LS-LABEL
           PERFORM SHOW-C

      * C = -A   (via real scaling by -1)
           MOVE -1 TO LS-S
           MOVE FUNCTION COMPLEX-SCALE(A, LS-S) TO C
           MOVE '-A (scale)' TO LS-LABEL
           PERFORM SHOW-C

      * C = -A   (via negate)
           MOVE FUNCTION COMPLEX-NEGATE(A) TO C
           MOVE '-A (negate)' TO LS-LABEL
           PERFORM SHOW-C

      * RE(A)
           MOVE FUNCTION COMPLEX-REAL(A) TO LS-RVAL
           MOVE LS-RVAL TO C::CT-RE
           MOVE 0       TO C::CT-IM
           MOVE 'RE(A)' TO LS-LABEL
           PERFORM SHOW-C

      * IM(A)
           MOVE FUNCTION COMPLEX-IMAG(A) TO LS-RVAL
           MOVE LS-RVAL TO C::CT-RE
           MOVE 0       TO C::CT-IM
           MOVE 'IM(A)' TO LS-LABEL
           PERFORM SHOW-C

      * C = A * B
           MOVE FUNCTION COMPLEX-MULT(A, B) TO C
           MOVE 'A * B' TO LS-LABEL
           PERFORM SHOW-C

      * C = 1/A
           MOVE FUNCTION COMPLEX-INVERSE(A) TO C
           MOVE '1/A' TO LS-LABEL
           PERFORM SHOW-C

      * C = A / B
           MOVE FUNCTION COMPLEX-DIVIDE(A, B) TO C
           MOVE 'A/B' TO LS-LABEL
           PERFORM SHOW-C

           GOBACK
           .

      * Format C into LS-FMT and print "<label> = <value>" with no
      * trailing padding (LS-LEN is the meaningful text length).
       SHOW-C.
           MOVE FUNCTION COMPLEX-FORMAT(C, LS-LEN) TO LS-FMT
           DISPLAY LS-LABEL ' = ' LS-FMT(1:LS-LEN)
           .

       END PROGRAM MAIN.

       COPY CPROTO.

      * vim: et ts=2 sw=2
