       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-NEGATE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief COMPLEX-NEGATE -- -(a + b i)
      *
      * @param [in]  LK-A         the complex value.
      * @returns     LK-RESULT    -LK-A.
      ******************************************************************
           COMPUTE LK-RESULT::CT-RE = LK-A::CT-RE * -1
           COMPUTE LK-RESULT::CT-IM = LK-A::CT-IM * -1
           GOBACK
           .
       END FUNCTION COMPLEX-NEGATE.

      * vim: et ts=2 sw=2
