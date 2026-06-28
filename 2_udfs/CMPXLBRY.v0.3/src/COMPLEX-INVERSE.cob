       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-INVERSE.
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
        COPY CTYPES.
       01  LS-MAG    TYPE REAL-T.
       LINKAGE SECTION.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief COMPLEX-INVERSE -- 1 / (a + b i)
      *
      *   = (a - b i) / (a^2 + b^2)
      *
      * @param [in]  LK-A         the value to invert.
      * @returns     LK-RESULT    1 / LK-A.
      ******************************************************************
           COMPUTE LS-MAG =
             (LK-A::CT-RE * LK-A::CT-RE) + (LK-A::CT-IM * LK-A::CT-IM)

           COMPUTE LK-RESULT::CT-RE = LK-A::CT-RE / LS-MAG
           COMPUTE LK-RESULT::CT-IM = (LK-A::CT-IM / LS-MAG) * -1
           GOBACK
           .
       END FUNCTION COMPLEX-INVERSE.

      * vim: et ts=2 sw=2
