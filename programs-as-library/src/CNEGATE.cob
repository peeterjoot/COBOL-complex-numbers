       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CNEGATE.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION USING
        LK-ADDPARM-IN1-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-NEGATE
      *
      * @param [in] LK-NEGPARM-IN-COMPLEX,
      *   with members LK-NEGPARM-IN-RE, LK-NEGPARM-IN-IM.
      * @param [out] LK-NEGPARM-OUT-COMPLEX,
      *   with members LK-NEGPARM-OUT-RE, LK-NEGPARM-OUT-IM.
      *
       COMPLEX-NEGATE.
           COMPUTE LK-NEGPARM-OUT-RE =
             -LK-NEGPARM-IN-RE

           COMPUTE LK-NEGPARM-OUT-IM =
             -LK-NEGPARM-IN-IM

           GOBACK
           .

      * vim: et ts=4 sw=4
