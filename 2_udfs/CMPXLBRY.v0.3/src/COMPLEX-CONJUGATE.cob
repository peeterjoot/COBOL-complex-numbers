       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-CONJUGATE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief COMPLEX-CONJUGATE -- (a + b i)^* = a - b i
      *
      * @param [in]  LK-A         the complex value.
      * @returns     LK-RESULT    conjugate of LK-A.
      ******************************************************************
           MOVE    LK-A::CT-RE TO LK-RESULT::CT-RE
           COMPUTE LK-RESULT::CT-IM = LK-A::CT-IM * -1
           GOBACK
           .
       END FUNCTION COMPLEX-CONJUGATE.

      * vim: et ts=2 sw=2
