       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRDIV.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==W-TMP-==.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN1-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN2-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-OUT-==.
       PROCEDURE DIVISION USING
        L-IN1-COMPLEX,
        L-IN2-COMPLEX,
        L-OUT-COMPLEX.
      ******************************************************************
      * @brief COMPLEX-DIVIDE-RETURN
      *
      * @param [in] L-IN1-COMPLEX,
      *   with members L-IN1-RE, L-IN1-IM.
      * @param [in] L-IN2-COMPLEX,
      *   with members L-IN2-RE, L-IN2-IM.
      * @param [out] L-OUT-COMPLEX,
      *   with members L-OUT-RE, L-OUT-IM.
      *
      *   (a + b i)/(c + d i) = (a + bi) * (1/(c + di))
           CALL 'CRINV' USING
             L-IN2-COMPLEX,
             W-TMP-COMPLEX

           CALL 'CRMULT' USING
             L-IN1-COMPLEX,
             W-TMP-COMPLEX,
             L-OUT-COMPLEX

           GOBACK
           .

      * vim: et ts=2 sw=2
