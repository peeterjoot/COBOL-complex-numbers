       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-REAL.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-RESULT TYPE REAL-T.
       PROCEDURE DIVISION USING LK-A RETURNING LK-RESULT.
      ******************************************************************
      * @brief COMPLEX-REAL -- RE(a + b i) = a
      *
      * @param [in]  LK-A         the complex value.
      * @returns     LK-RESULT    the real part of LK-A.
      ******************************************************************
           MOVE LK-A::CT-RE TO LK-RESULT
           GOBACK
           .
       END FUNCTION COMPLEX-REAL.

      * vim: et ts=2 sw=2
