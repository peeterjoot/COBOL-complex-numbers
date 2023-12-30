       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMDIV.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-DIV-INVTMP-==.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-DIVPARM-IN1-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-DIVPARM-IN2-==.
       PROCEDURE DIVISION USING
        LK-DIVPARM-IN1-COMPLEX,
        LK-DIVPARM-IN2-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-DIVIDE
      *
      * @param [in,out] LK-DIVPARM-IN1-COMPLEX,
      *   with members LK-DIVPARM-IN1-RE, LK-DIVPARM-IN1-IM.
      * @param [in] LK-DIVPARM-IN2-COMPLEX,
      *   with members LK-DIVPARM-IN2-RE, LK-DIVPARM-IN2-IM.
      *
      *   (a + b i)/(c + d i) = (a + bi) * (1/(c + di))
      *COMPLEX-DIVIDE.
           CALL 'CRINV' USING
             LK-DIVPARM-IN2-COMPLEX,
             LK-DIV-INVTMP-COMPLEX

           CALL 'CMMULT' USING
             LK-DIVPARM-IN1-COMPLEX,
             LK-DIV-INVTMP-COMPLEX

           GOBACK
           .

      * vim: et ts=4 sw=4
