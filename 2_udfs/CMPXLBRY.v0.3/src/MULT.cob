       IDENTIFICATION DIVISION.
       PROGRAM-ID.    MULT.
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
       01  LS-LEN  TYPE STATUS-T.
       01  LS-LABEL PIC X(20).
       01  LS-FMT   PIC X(27).
       PROCEDURE DIVISION.

      * A = (1,2), B = (3,4)
           MOVE 1 TO A::CT-RE
           MOVE 2 TO A::CT-IM
           MOVE 3 TO B::CT-RE
           MOVE 4 TO B::CT-IM

      * C = A * B
           MOVE FUNCTION COMPLEX-MULT(A, B) TO C
           MOVE 'A * B' TO LS-LABEL
           MOVE FUNCTION COMPLEX-FORMAT(C, LS-LEN) TO LS-FMT
           DISPLAY LS-LABEL ' = ' LS-FMT(1:LS-LEN)

           GOBACK
           .
       END PROGRAM MULT.

       COPY CPROTO.

      * vim: et ts=2 sw=2
