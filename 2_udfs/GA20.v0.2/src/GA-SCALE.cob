       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-SCALE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       COPY CREPOS.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-A      TYPE MV-T.
       01  LK-S      TYPE REAL-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-A, LK-S
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief GA-SCALE -- s * multivector, s real.
      *
      * @param [in]  LK-A       the multivector.
      * @param [in]  LK-S       the real scale factor.
      * @returns     LK-RESULT  LK-S * LK-A (grade unchanged).
      ******************************************************************
           MOVE LK-A::MV-GRADE TO LK-RESULT::MV-GRADE

           MOVE FUNCTION COMPLEX-SCALE(LK-A::MV-G02, LK-S)
             TO LK-RESULT::MV-G02
           MOVE FUNCTION COMPLEX-SCALE(LK-A::MV-G1, LK-S)
             TO LK-RESULT::MV-G1
           GOBACK
           .
       END FUNCTION GA-SCALE.

      * Prototypes for the COMPLEX-* functions called above.
       COPY CPROTO.

      * vim: et ts=2 sw=2
