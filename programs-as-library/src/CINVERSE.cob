       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CINVERSE.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION USING
        LK-ADDPARM-IN1-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-INVERSE
      *
      * @param [in] LK-INVPARM-IN-COMPLEX,
      *   with members LK-INVPARM-IN-RE, LK-INVPARM-IN-IM.
      * @param [out] LK-INVPARM-OUT-COMPLEX,
      *   with members LK-INVPARM-OUT-RE, LK-INVPARM-OUT-IM.
      *
      *   1/(a + b i) = (a - b i)/(a^2 + b^2)
       COMPLEX-INVERSE.
           COMPUTE LK-INV-MAGNITUDE-V =
             (LK-INVPARM-IN-RE * LK-INVPARM-IN-RE) +
             (LK-INVPARM-IN-IM * LK-INVPARM-IN-IM)

           COMPUTE LK-INVPARM-OUT-RE =
             LK-INVPARM-IN-RE/LK-INV-MAGNITUDE-V

           COMPUTE LK-INVPARM-OUT-IM =
             -(LK-INVPARM-IN-IM/LK-INV-MAGNITUDE-V)

           GOBACK
           .

      * vim: et ts=4 sw=4
