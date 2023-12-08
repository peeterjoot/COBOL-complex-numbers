       IDENTIFICATION DIVISION.
       PROGRAM-ID.    COMPLEX.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-V1-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-V2-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-CONJPARM-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-REALPARM-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-IMAGPARM-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-MULTPARM-IN1-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-MULTPARM-IN2-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-MULTPARM-OUT-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-DIVPARM-IN1-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-DIVPARM-IN2-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-DIVPARM-OUT-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-INVPARM-IN-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-INVPARM-OUT-==.
       COPY FLOAT REPLACING ==(PRFX)== BY ==WS-INV-MAGNITUDE-==.
       COPY COMPLEX REPLACING ==(PRFX)== BY ==WS-DISPPARM-==.
       COPY FLOAT REPLACING ==(PRFX)== BY ==WS-REAL-==.
       COPY FLOAT REPLACING ==(PRFX)== BY ==WS-IMAG-==.
       01 WS-DISPPARM-N PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.

           MOVE 1 TO WS-V1-RE
           MOVE 2 TO WS-V1-IM

           MOVE 3 TO WS-V2-RE
           MOVE 4 TO WS-V2-IM

           MOVE WS-V1-COMPLEX TO WS-DISPPARM-COMPLEX
           MOVE 'A' TO WS-DISPPARM-N
           PERFORM COMPLEX-DISPLAY

           MOVE WS-V2-COMPLEX TO WS-DISPPARM-COMPLEX
           MOVE 'B' TO WS-DISPPARM-N
           PERFORM COMPLEX-DISPLAY

           MOVE WS-V1-COMPLEX TO WS-CONJPARM-COMPLEX
           PERFORM COMPLEX-CONJUGATE
           MOVE WS-CONJPARM-COMPLEX TO WS-DISPPARM-COMPLEX
           MOVE 'CONJ(A)' TO WS-DISPPARM-N
           PERFORM COMPLEX-DISPLAY

           MOVE WS-V1-COMPLEX TO WS-REALPARM-COMPLEX
           PERFORM COMPLEX-REAL
           MOVE WS-REAL-V TO WS-DISPPARM-RE
           MOVE 0         TO WS-DISPPARM-IM
           MOVE 'RE(A)' TO WS-DISPPARM-N
           PERFORM COMPLEX-DISPLAY

           MOVE WS-V1-COMPLEX TO WS-IMAGPARM-COMPLEX
           PERFORM COMPLEX-IMAG
           MOVE WS-IMAG-V TO WS-DISPPARM-RE
           MOVE 0         TO WS-DISPPARM-IM
           MOVE 'IM(A)' TO WS-DISPPARM-N
           PERFORM COMPLEX-DISPLAY

           MOVE WS-V1-COMPLEX TO WS-MULTPARM-IN1-COMPLEX
           MOVE WS-V2-COMPLEX TO WS-MULTPARM-IN2-COMPLEX
           PERFORM COMPLEX-MULT
           MOVE WS-MULTPARM-OUT-COMPLEX TO WS-DISPPARM-COMPLEX
           MOVE 'A * B' TO WS-DISPPARM-N
           PERFORM COMPLEX-DISPLAY

           MOVE WS-V1-COMPLEX TO WS-INVPARM-IN-COMPLEX
           PERFORM COMPLEX-INVERSE
           MOVE WS-INVPARM-OUT-COMPLEX TO WS-DISPPARM-COMPLEX
           MOVE '1/A' TO WS-DISPPARM-N
           PERFORM COMPLEX-DISPLAY

           MOVE WS-V1-COMPLEX TO WS-DIVPARM-IN1-COMPLEX
           MOVE WS-V2-COMPLEX TO WS-DIVPARM-IN2-COMPLEX
           PERFORM COMPLEX-DIVIDE
           MOVE WS-DIVPARM-OUT-COMPLEX TO WS-DISPPARM-COMPLEX
           MOVE 'A/B' TO WS-DISPPARM-N
           PERFORM COMPLEX-DISPLAY

           GOBACK
           .

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
           .
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-DISPLAY
      *
      * @param [in] WS-DISPPARM-COMPLEX,
      *   with members WS-DISPPARM-RE, WS-DISPPARM-IM.
       COMPLEX-DISPLAY.
           IF WS-DISPPARM-IM IS EQUAL ZERO
             DISPLAY WS-DISPPARM-N ' = ' WS-DISPPARM-RE
           ELSE
             DISPLAY WS-DISPPARM-N ' = ' WS-DISPPARM-RE ' + ('
                  WS-DISPPARM-IM
                  ') I'
           END-IF
           .
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-REAL
      *
      * @param [in] WS-REALPARM-COMPLEX,
      *   with members WS-REALPARM-RE, WS-REALPARM-IM.
      * @param [out] WS-REAL-V,
       COMPLEX-REAL.
           MOVE WS-REALPARM-RE TO WS-REAL-V
           .
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-IMAG
      *
      * @param [in] WS-IMAGPARM-COMPLEX,
      *   with members WS-IMAGPARM-RE, WS-IMAGPARM-IM.
      * @param [out] WS-IMAG-V,
       COMPLEX-IMAG.
           MOVE WS-IMAGPARM-IM TO WS-IMAG-V
           .
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
           .
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
           .
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
           .
      ******************************************************************

