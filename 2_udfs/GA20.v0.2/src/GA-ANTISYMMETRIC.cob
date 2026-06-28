       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-ANTISYMMETRIC.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           FUNCTION GA-MULT
           FUNCTION GA-SUB.
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
        COPY GATYPES.
       01  LS-AB     TYPE MV-T.
       01  LS-BA     TYPE MV-T.
       LINKAGE SECTION.
       01  LK-A      TYPE MV-T.
       01  LK-B      TYPE MV-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-A, LK-B
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief GA-ANTISYMMETRIC -- the antisymmetric product A B - B A.
      *
      * @param [in]  LK-A, LK-B  the factors.
      * @returns     LK-RESULT   LK-A LK-B - LK-B LK-A.
      ******************************************************************
           MOVE FUNCTION GA-MULT(LK-A, LK-B) TO LS-AB
           MOVE FUNCTION GA-MULT(LK-B, LK-A) TO LS-BA
           MOVE FUNCTION GA-SUB(LS-AB, LS-BA) TO LK-RESULT
           GOBACK
           .
       END FUNCTION GA-ANTISYMMETRIC.

      * Prototypes for the GA-* functions called above.
       COPY GAPROTO.

      * vim: et ts=2 sw=2
