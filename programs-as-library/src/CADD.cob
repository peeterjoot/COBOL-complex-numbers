       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CADD.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-ADD
      *
      * @param [in] WS-ADDPARM-IN1-COMPLEX,
      *   with members WS-ADDPARM-IN1-RE, WS-ADDPARM-IN1-IM.
      * @param [in] WS-ADDPARM-IN2-COMPLEX,
      *   with members WS-ADDPARM-IN2-RE, WS-ADDPARM-IN2-IM.
      * @param [out] WS-ADDPARM-OUT-COMPLEX,
      *   with members WS-ADDPARM-OUT-RE, WS-ADDPARM-OUT-IM.
      *
       COMPLEX-ADD.
           COMPUTE WS-ADDPARM-OUT-RE =
             WS-ADDPARM-IN1-RE + WS-ADDPARM-IN2-RE

           COMPUTE WS-ADDPARM-OUT-IM =
             WS-ADDPARM-IN1-IM + WS-ADDPARM-IN2-IM

           GOBACK
           .

      * vim: et ts=4 sw=4
