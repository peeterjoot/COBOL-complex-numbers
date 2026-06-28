       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-DIVIDE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           FUNCTION COMPLEX-INVERSE
           FUNCTION COMPLEX-MULT.
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
        COPY CTYPES.
       01  LS-TMP    TYPE COMPLEX-T.
       LINKAGE SECTION.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-B      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A, LK-B
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief COMPLEX-DIVIDE -- (a + b i) / (c + d i)
      *
      *   = (a + b i) * (1 / (c + d i))
      *
      * @param [in]  LK-A         dividend.
      * @param [in]  LK-B         divisor.
      * @returns     LK-RESULT    LK-A / LK-B.
      ******************************************************************
           MOVE FUNCTION COMPLEX-INVERSE(LK-B) TO LS-TMP
           MOVE FUNCTION COMPLEX-MULT(LK-A, LS-TMP) TO LK-RESULT
           GOBACK
           .
       END FUNCTION COMPLEX-DIVIDE.

      * Prototypes for the called functions (COMPLEX-INVERSE, COMPLEX-MULT);
      * the same-unit definition of COMPLEX-DIVIDE above overrides its own
      * prototype in this copybook.
       COPY CPROTO.

      * vim: et ts=2 sw=2
