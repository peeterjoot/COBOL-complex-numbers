       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CCONJ.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION.

      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-CONJUGATE
      *
      * @param [in] WS-CONJPARM-COMPLEX,
      *   with members WS-CONJPARM-RE, WS-CONJPARM-IM.
      *
      * Side effects: sign of WS-CONJPARM-IM is toggled.
      *
       COMPLEX-CONJUGATE.
           COMPUTE WS-CONJPARM-IM = WS-CONJPARM-IM * -1

           GOBACK
           .

      * vim: et ts=4 sw=4
