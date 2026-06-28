       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-MULT.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-B      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A, LK-B
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief COMPLEX-MULT -- (a + b i)(c + d i)
      *
      *   = (a c - b d) + i (b c + a d)
      *
      * @param [in]  LK-A, LK-B   the factors.
      * @returns     LK-RESULT    LK-A * LK-B.
      *
      * LK-RESULT is the function's own return buffer, distinct from the
      * inputs, so the product is written directly with no anti-alias temp.
      ******************************************************************
           COMPUTE LK-RESULT::CT-RE =
             (LK-A::CT-RE * LK-B::CT-RE) - (LK-A::CT-IM * LK-B::CT-IM)
           COMPUTE LK-RESULT::CT-IM =
             (LK-A::CT-IM * LK-B::CT-RE) + (LK-A::CT-RE * LK-B::CT-IM)
           GOBACK
           .
       END FUNCTION COMPLEX-MULT.

      * vim: et ts=2 sw=2
