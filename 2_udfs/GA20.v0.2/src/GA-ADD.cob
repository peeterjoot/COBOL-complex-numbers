       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-ADD.
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
      * @brief GA-ADD -- multivector sum, half by complex half.
      *
      * @param [in]  LK-A, LK-B  the addends.
      * @returns     LK-RESULT   LK-A + LK-B.
      *
      * The grade is preserved when both inputs share it, else the sum is
      * a general multivector (-1).
      ******************************************************************
           IF LK-A::MV-GRADE = LK-B::MV-GRADE
             MOVE LK-A::MV-GRADE TO LK-RESULT::MV-GRADE
           ELSE
             MOVE -1 TO LK-RESULT::MV-GRADE
           END-IF

           MOVE FUNCTION COMPLEX-ADD(LK-A::MV-G02, LK-B::MV-G02)
             TO LK-RESULT::MV-G02
           MOVE FUNCTION COMPLEX-ADD(LK-A::MV-G1, LK-B::MV-G1)
             TO LK-RESULT::MV-G1
           GOBACK
           .
       END FUNCTION GA-ADD.

      * Prototypes for the COMPLEX-* functions called above.
       COPY CPROTO.

      * vim: et ts=2 sw=2
