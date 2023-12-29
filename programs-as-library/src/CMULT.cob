       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMULT.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION USING
        LK-ADDPARM-IN1-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-MULT
      *
      * @param [in] LK-MULTPARM-IN1-COMPLEX,
      *   with members LK-MULTPARM-IN1-RE, LK-MULTPARM-IN1-IM.
      * @param [in] LK-MULTPARM-IN2-COMPLEX,
      *   with members LK-MULTPARM-IN2-RE, LK-MULTPARM-IN2-IM.
      * @param [out] LK-MULTPARM-OUT-COMPLEX,
      *   with members LK-MULTPARM-OUT-RE, LK-MULTPARM-OUT-IM.
      *
      *   (a + b i)(c + d i) = a c - b d + i( b c + a d)
       COMPLEX-MULT.
           COMPUTE LK-MULTPARM-OUT-RE =
             (LK-MULTPARM-IN1-RE * LK-MULTPARM-IN2-RE) -
             (LK-MULTPARM-IN1-IM * LK-MULTPARM-IN2-IM)

           COMPUTE LK-MULTPARM-OUT-IM =
             (LK-MULTPARM-IN1-IM * LK-MULTPARM-IN2-RE) +
             (LK-MULTPARM-IN1-RE * LK-MULTPARM-IN2-IM)

           GOBACK
           .

      * vim: et ts=4 sw=4
