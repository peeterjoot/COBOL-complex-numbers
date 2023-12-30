       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMMULT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==W-TMP-==.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN1-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN2-==.
       PROCEDURE DIVISION USING
        L-IN1-COMPLEX,
        L-IN2-COMPLEX.
      ******************************************************************
      * @brief COMPLEX-MULT-MODIFY
      *
      * @param [in,out] L-IN1-COMPLEX,
      *   with members L-IN1-RE, L-IN1-IM.
      * @param [in] L-IN2-COMPLEX,
      *   with members L-IN2-RE, L-IN2-IM.
      *
      *   (a + b i)(c + d i) = a c - b d + i( b c + a d)
           COMPUTE W-TMP-RE =
             (L-IN1-RE * L-IN2-RE) -
             (L-IN1-IM * L-IN2-IM)

           COMPUTE W-TMP-IM =
             (L-IN1-IM * L-IN2-RE) +
             (L-IN1-RE * L-IN2-IM)

      * temps in case there's aliasing:
           MOVE W-TMP-COMPLEX TO L-IN1-COMPLEX

           GOBACK
           .

      * vim: et ts=4 sw=4
