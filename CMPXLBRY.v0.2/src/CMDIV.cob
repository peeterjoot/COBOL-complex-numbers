       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMDIV.
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
      * @brief COMPLEX-DIVIDE-MODIFY
      *
      * @param [in,out] L-IN1-COMPLEX,
      *   with members L-IN1-RE, L-IN1-IM.
      * @param [in] L-IN2-COMPLEX,
      *   with members L-IN2-RE, L-IN2-IM.
      *
      *   (a + b i)/(c + d i) = (a + bi) * (1/(c + di))
           CALL 'CRINV' USING
             L-IN2-COMPLEX,
             W-TMP-COMPLEX

           CALL 'CMMULT' USING
             L-IN1-COMPLEX,
             W-TMP-COMPLEX

           GOBACK
           .

      * vim: et ts=2 sw=2
