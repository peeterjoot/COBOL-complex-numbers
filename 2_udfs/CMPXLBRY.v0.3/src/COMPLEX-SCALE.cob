       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-SCALE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-S      TYPE REAL-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A, LK-S
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief COMPLEX-SCALE -- s (a + b i), s real
      *
      * @param [in]  LK-A         the complex value.
      * @param [in]  LK-S         the real scale factor.
      * @returns     LK-RESULT    LK-S * LK-A.
      ******************************************************************
           COMPUTE LK-RESULT::CT-RE = LK-A::CT-RE * LK-S
           COMPUTE LK-RESULT::CT-IM = LK-A::CT-IM * LK-S
           GOBACK
           .
       END FUNCTION COMPLEX-SCALE.

      * vim: et ts=2 sw=2
