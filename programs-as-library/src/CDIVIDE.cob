       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CDIVIDE.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-DIVIDE
      *
      * @param [in] WS-DIVPARM-IN1-COMPLEX,
      *   with members WS-DIVPARM-IN1-RE, WS-DIVPARM-IN1-IM.
      * @param [in] WS-DIVPARM-IN2-COMPLEX,
      *   with members WS-DIVPARM-IN2-RE, WS-DIVPARM-IN2-IM.
      * @param [out] WS-DIVPARM-OUT-COMPLEX,
      *   with members WS-DIVPARM-OUT-RE, WS-DIVPARM-OUT-IM.
      *
      *   (a + b i)/(c + d i) = (a + bi) * (1/(c + di))
       COMPLEX-DIVIDE.
           MOVE WS-DIVPARM-IN2-COMPLEX TO WS-INVPARM-IN-COMPLEX
           PERFORM COMPLEX-INVERSE

           MOVE WS-DIVPARM-IN1-COMPLEX TO WS-MULTPARM-IN1-COMPLEX
           MOVE WS-INVPARM-OUT-COMPLEX TO WS-MULTPARM-IN2-COMPLEX
           PERFORM COMPLEX-MULT
           MOVE WS-MULTPARM-OUT-COMPLEX TO WS-DIVPARM-OUT-COMPLEX

           GOBACK
           .

      * vim: et ts=4 sw=4
