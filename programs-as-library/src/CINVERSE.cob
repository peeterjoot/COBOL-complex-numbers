       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CINVERSE.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-INVERSE
      *
      * @param [in] WS-INVPARM-IN-COMPLEX,
      *   with members WS-INVPARM-IN-RE, WS-INVPARM-IN-IM.
      * @param [out] WS-INVPARM-OUT-COMPLEX,
      *   with members WS-INVPARM-OUT-RE, WS-INVPARM-OUT-IM.
      *
      *   1/(a + b i) = (a - b i)/(a^2 + b^2)
       COMPLEX-INVERSE.
           COMPUTE WS-INV-MAGNITUDE-V =
             (WS-INVPARM-IN-RE * WS-INVPARM-IN-RE) +
             (WS-INVPARM-IN-IM * WS-INVPARM-IN-IM)

           COMPUTE WS-INVPARM-OUT-RE =
             WS-INVPARM-IN-RE/WS-INV-MAGNITUDE-V

           COMPUTE WS-INVPARM-OUT-IM =
             -(WS-INVPARM-IN-IM/WS-INV-MAGNITUDE-V)

           GOBACK
           .

      * vim: et ts=4 sw=4
