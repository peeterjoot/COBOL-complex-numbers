       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-SUB.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       COPY CREPOS.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-A      TYPE MV-T.
       01  LK-B      TYPE MV-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-A, LK-B
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief GA-SUB -- multivector difference, half by complex half.
      *
      * @param [in]  LK-A, LK-B  minuend and subtrahend.
      * @returns     LK-RESULT   LK-A - LK-B.
      ******************************************************************
           IF LK-A::MV-GRADE = LK-B::MV-GRADE
             MOVE LK-A::MV-GRADE TO LK-RESULT::MV-GRADE
           ELSE
             MOVE -1 TO LK-RESULT::MV-GRADE
           END-IF

           MOVE FUNCTION COMPLEX-SUB(LK-A::MV-G02, LK-B::MV-G02)
             TO LK-RESULT::MV-G02
           MOVE FUNCTION COMPLEX-SUB(LK-A::MV-G1, LK-B::MV-G1)
             TO LK-RESULT::MV-G1
           GOBACK
           .
       END FUNCTION GA-SUB.

      * Prototypes for the COMPLEX-* functions called above.
       COPY CPROTO.

      * vim: et ts=2 sw=2
