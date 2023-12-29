       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CNEGATE.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-NEGATE
      *
      * @param [in] WS-NEGPARM-IN-COMPLEX,
      *   with members WS-NEGPARM-IN-RE, WS-NEGPARM-IN-IM.
      * @param [out] WS-NEGPARM-OUT-COMPLEX,
      *   with members WS-NEGPARM-OUT-RE, WS-NEGPARM-OUT-IM.
      *
       COMPLEX-NEGATE.
           COMPUTE WS-NEGPARM-OUT-RE =
             -WS-NEGPARM-IN-RE

           COMPUTE WS-NEGPARM-OUT-IM =
             -WS-NEGPARM-IN-IM

           GOBACK
           .

      * vim: et ts=4 sw=4
