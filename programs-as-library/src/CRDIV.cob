       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRDIV.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-DIV-INVTMP-==.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-DIVPARM-IN1-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-DIVPARM-IN2-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-DIVPARM-OUT-==.
       PROCEDURE DIVISION USING
        LK-DIVPARM-IN1-COMPLEX,
        LK-DIVPARM-IN2-COMPLEX,
        LK-DIVPARM-OUT-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-DIVIDE
      *
      * @param [in] LK-DIVPARM-IN1-COMPLEX,
      *   with members LK-DIVPARM-IN1-RE, LK-DIVPARM-IN1-IM.
      * @param [in] LK-DIVPARM-IN2-COMPLEX,
      *   with members LK-DIVPARM-IN2-RE, LK-DIVPARM-IN2-IM.
      * @param [out] LK-DIVPARM-OUT-COMPLEX,
      *   with members LK-DIVPARM-OUT-RE, LK-DIVPARM-OUT-IM.
      *
      *   (a + b i)/(c + d i) = (a + bi) * (1/(c + di))
       COMPLEX-DIVIDE.
           CALL 'CRINV' USING
             LK-DIVPARM-IN2-COMPLEX,
             LK-DIV-INVTMP-COMPLEX

           CALL 'CRMULT' USING
             LK-DIVPARM-IN1-COMPLEX,
             LK-DIV-INVTMP-COMPLEX,
             LK-DIVPARM-OUT-COMPLEX

           GOBACK
           .

      * vim: et ts=4 sw=4
