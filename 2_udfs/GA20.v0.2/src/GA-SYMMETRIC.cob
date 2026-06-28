       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-SYMMETRIC.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           FUNCTION GA-MULT
           FUNCTION GA-ADD.
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
      * @brief GA-SYMMETRIC -- the symmetric product A B + B A.
      *
      * @param [in]  LK-A, LK-B  the factors.
      * @returns     LK-RESULT   LK-A LK-B + LK-B LK-A.
      ******************************************************************
           MOVE FUNCTION GA-MULT(LK-A, LK-B) TO LS-AB
           MOVE FUNCTION GA-MULT(LK-B, LK-A) TO LS-BA
           MOVE FUNCTION GA-ADD(LS-AB, LS-BA) TO LK-RESULT
           GOBACK
           .
       END FUNCTION GA-SYMMETRIC.

      * Prototypes for the GA-* functions called above.
       COPY GAPROTO.

      * vim: et ts=2 sw=2
