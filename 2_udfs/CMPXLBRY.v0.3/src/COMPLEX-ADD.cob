       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-ADD.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-B      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A, LK-B
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief COMPLEX-ADD -- (a + b i) + (c + d i)
      *
      * @param [in]  LK-A, LK-B   the addends.
      * @returns     LK-RESULT    LK-A + LK-B.
      ******************************************************************
           COMPUTE LK-RESULT::CT-RE = LK-A::CT-RE + LK-B::CT-RE
           COMPUTE LK-RESULT::CT-IM = LK-A::CT-IM + LK-B::CT-IM
           GOBACK
           .
       END FUNCTION COMPLEX-ADD.

      * vim: et ts=2 sw=2
