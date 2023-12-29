       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CSUB.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-SUB
      *
      * @param [in] WS-SUBPARM-IN1-COMPLEX,
      *   with members WS-SUBPARM-IN1-RE, WS-SUBPARM-IN1-IM.
      * @param [in] WS-SUBPARM-IN2-COMPLEX,
      *   with members WS-SUBPARM-IN2-RE, WS-SUBPARM-IN2-IM.
      * @param [out] WS-SUBPARM-OUT-COMPLEX,
      *   with members WS-SUBPARM-OUT-RE, WS-SUBPARM-OUT-IM.
      *
       COMPLEX-SUB.
           COMPUTE WS-SUBPARM-OUT-RE =
             WS-SUBPARM-IN1-RE - WS-SUBPARM-IN2-RE

           COMPUTE WS-SUBPARM-OUT-IM =
             WS-SUBPARM-IN1-IM - WS-SUBPARM-IN2-IM

           GOBACK
           .

      * vim: et ts=4 sw=4
