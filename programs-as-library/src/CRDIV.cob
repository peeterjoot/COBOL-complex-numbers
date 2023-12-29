       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRDIV.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION USING
        LK-ADDPARM-IN1-COMPLEX.
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
           MOVE LK-DIVPARM-IN2-COMPLEX TO LK-INVPARM-IN-COMPLEX
           PERFORM COMPLEX-INVERSE

           MOVE LK-DIVPARM-IN1-COMPLEX TO LK-MULTPARM-IN1-COMPLEX
           MOVE LK-INVPARM-OUT-COMPLEX TO LK-MULTPARM-IN2-COMPLEX
           PERFORM COMPLEX-MULT
           MOVE LK-MULTPARM-OUT-COMPLEX TO LK-DIVPARM-OUT-COMPLEX

           GOBACK
           .

      * vim: et ts=4 sw=4
