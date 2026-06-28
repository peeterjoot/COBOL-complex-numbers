       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-IMAG.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-RESULT TYPE REAL-T.
       PROCEDURE DIVISION USING LK-A RETURNING LK-RESULT.
      ******************************************************************
      * @brief COMPLEX-IMAG -- IM(a + b i) = b
      *
      * @param [in]  LK-A         the complex value.
      * @returns     LK-RESULT    the imaginary part of LK-A.
      ******************************************************************
           MOVE LK-A::CT-IM TO LK-RESULT
           GOBACK
           .
       END FUNCTION COMPLEX-IMAG.

      * vim: et ts=2 sw=2
