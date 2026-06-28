       IDENTIFICATION DIVISION.
       PROGRAM-ID.    MULT.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       COPY GAREPOS.
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
        COPY GATYPES.
       01  A        TYPE MV-T.
       01  B        TYPE MV-T.
       01  C        TYPE MV-T.
       01  D        TYPE MV-T.
       01  K        TYPE MV-T.
       01  S1       TYPE MV-T.
       01  S2       TYPE MV-T.
       01  R        TYPE MV-T.
       01  ONE-MV   TYPE MV-T.
       01  E1       TYPE MV-T.
       01  E2       TYPE MV-T.
       01  E12      TYPE MV-T.
       01  ZS       TYPE REAL-T.
       01  ONE-S    TYPE REAL-T.
       01  TWO-S    TYPE REAL-T.
       01  THREE-S  TYPE REAL-T.
       01  FOUR-S   TYPE REAL-T.
       01  WS-GR    TYPE GRADE-T.
       01  WS-NAME  PIC X(20).
       PROCEDURE DIVISION.

           MOVE 0 TO ZS
           MOVE 1 TO ONE-S
           MOVE 2 TO TWO-S
           MOVE 3 TO THREE-S
           MOVE 4 TO FOUR-S

           MOVE FUNCTION GA-MAKE-MV(ONE-S, TWO-S, THREE-S, FOUR-S) TO A

           MOVE FUNCTION GA-MAKE-SCALAR(ONE-S)     TO ONE-MV
           MOVE FUNCTION GA-MAKE-VECTOR(ONE-S, ZS) TO E1
           MOVE FUNCTION GA-MAKE-VECTOR(ZS, ONE-S) TO E2
           MOVE FUNCTION GA-MAKE-PSEUDO(ONE-S)     TO E12

           MOVE FUNCTION GA-MAKE-SCALAR(A::MV-G02::CT-RE) TO B
           MOVE FUNCTION GA-MAKE-VECTOR(A::MV-G1::CT-RE,
             A::MV-G1::CT-IM) TO C
           MOVE FUNCTION GA-MAKE-PSEUDO(A::MV-G02::CT-IM) TO D

           MOVE 'A'      TO WS-NAME
           CALL 'GA-DISPLAY' USING WS-NAME, A
           MOVE 'B'      TO WS-NAME
           CALL 'GA-DISPLAY' USING WS-NAME, B
           MOVE 'C'      TO WS-NAME
           CALL 'GA-DISPLAY' USING WS-NAME, C
           MOVE 'D'      TO WS-NAME
           CALL 'GA-DISPLAY' USING WS-NAME, D
           MOVE '1'      TO WS-NAME
           CALL 'GA-DISPLAY' USING WS-NAME, ONE-MV
           MOVE 'e_1'    TO WS-NAME
           CALL 'GA-DISPLAY' USING WS-NAME, E1
           MOVE 'e_2'    TO WS-NAME
           CALL 'GA-DISPLAY' USING WS-NAME, E2
           MOVE 'e_{12}' TO WS-NAME
           CALL 'GA-DISPLAY' USING WS-NAME, E12

           MOVE 'A * 1'      TO WS-NAME
           MOVE ONE-MV TO S1
           PERFORM MULTIPLY-AND-PRINT

           MOVE 'A * e_1'    TO WS-NAME
           MOVE E1 TO S1
           PERFORM MULTIPLY-AND-PRINT

           MOVE 'A * e_2'    TO WS-NAME
           MOVE E2 TO S1
           PERFORM MULTIPLY-AND-PRINT

           MOVE 'A * e_{12}' TO WS-NAME
           MOVE E12 TO S1
           PERFORM MULTIPLY-AND-PRINT

           MOVE FUNCTION GA-SCALE(A, TWO-S) TO K
           MOVE 'A * 2'      TO WS-NAME
           CALL 'GA-DISPLAY' USING WS-NAME, K

           MOVE 'e_1 e_2 + e_2 e_1' TO WS-NAME
           MOVE E1 TO S1
           MOVE E2 TO S2
           PERFORM SYMMETRIC
           MOVE 'e_1 e_2 - e_2 e_1' TO WS-NAME
           PERFORM ANTISYMMETRIC

           MOVE E1 TO S2
           MOVE 'e_1 e_1 + e_1 e_1' TO WS-NAME
           PERFORM SYMMETRIC
           MOVE 'e_1 e_1 - e_1 e_1' TO WS-NAME
           PERFORM ANTISYMMETRIC

           MOVE '<A>_0' TO WS-NAME
           MOVE 0 TO WS-GR
           PERFORM GRADE-SELECT
           MOVE '<A>_1' TO WS-NAME
           MOVE 1 TO WS-GR
           PERFORM GRADE-SELECT
           MOVE '<A>_2' TO WS-NAME
           MOVE 2 TO WS-GR
           PERFORM GRADE-SELECT

           GOBACK
           .

        MULTIPLY-AND-PRINT.
           MOVE FUNCTION GA-MULT(A, S1) TO R
           CALL 'GA-DISPLAY' USING WS-NAME, R
           .
        GRADE-SELECT.
           MOVE FUNCTION GA-GRADE-SELECT(A, WS-GR) TO R
           CALL 'GA-DISPLAY' USING WS-NAME, R
           .
        SYMMETRIC.
           MOVE FUNCTION GA-SYMMETRIC(S1, S2) TO R
           CALL 'GA-DISPLAY' USING WS-NAME, R
           .
        ANTISYMMETRIC.
           MOVE FUNCTION GA-ANTISYMMETRIC(S1, S2) TO R
           CALL 'GA-DISPLAY' USING WS-NAME, R
           .

       END PROGRAM MULT.

       COPY GAPROTO.

      * vim: et ts=2 sw=2
