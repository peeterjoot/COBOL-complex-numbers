       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMULT.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
      ******************************************************************
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-MULT
      *
      * @param [in] WS-MULTPARM-IN1-COMPLEX,
      *   with members WS-MULTPARM-IN1-RE, WS-MULTPARM-IN1-IM.
      * @param [in] WS-MULTPARM-IN2-COMPLEX,
      *   with members WS-MULTPARM-IN2-RE, WS-MULTPARM-IN2-IM.
      * @param [out] WS-MULTPARM-OUT-COMPLEX,
      *   with members WS-MULTPARM-OUT-RE, WS-MULTPARM-OUT-IM.
      *
      *   (a + b i)(c + d i) = a c - b d + i( b c + a d)
       COMPLEX-MULT.
           COMPUTE WS-MULTPARM-OUT-RE =
             (WS-MULTPARM-IN1-RE * WS-MULTPARM-IN2-RE) -
             (WS-MULTPARM-IN1-IM * WS-MULTPARM-IN2-IM)

           COMPUTE WS-MULTPARM-OUT-IM =
             (WS-MULTPARM-IN1-IM * WS-MULTPARM-IN2-RE) +
             (WS-MULTPARM-IN1-RE * WS-MULTPARM-IN2-IM)

           GOBACK
           .

      * vim: et ts=4 sw=4
