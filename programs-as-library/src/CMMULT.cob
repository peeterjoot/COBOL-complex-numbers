       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMMULT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        COPY FLOAT REPLACING ==(PRFX)== BY ==WS-MULT-TMP-RE-==.
        COPY FLOAT REPLACING ==(PRFX)== BY ==WS-MULT-TMP-IM-==.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-MULTPARM-IN1-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-MULTPARM-IN2-==.
       PROCEDURE DIVISION USING
        LK-MULTPARM-IN1-COMPLEX,
        LK-MULTPARM-IN2-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-MULT
      *
      * @param [in,out] LK-MULTPARM-IN1-COMPLEX,
      *   with members LK-MULTPARM-IN1-RE, LK-MULTPARM-IN1-IM.
      * @param [in] LK-MULTPARM-IN2-COMPLEX,
      *   with members LK-MULTPARM-IN2-RE, LK-MULTPARM-IN2-IM.
      *
      *   (a + b i)(c + d i) = a c - b d + i( b c + a d)
      *COMPLEX-MULT.
           COMPUTE WS-MULT-TMP-RE-V =
             (LK-MULTPARM-IN1-RE * LK-MULTPARM-IN2-RE) -
             (LK-MULTPARM-IN1-IM * LK-MULTPARM-IN2-IM)

           COMPUTE WS-MULT-TMP-IM-V =
             (LK-MULTPARM-IN1-IM * LK-MULTPARM-IN2-RE) +
             (LK-MULTPARM-IN1-RE * LK-MULTPARM-IN2-IM)

      * temps in case there's aliasing:
           MOVE WS-MULT-TMP-RE-V TO LK-MULTPARM-IN1-RE
           MOVE WS-MULT-TMP-IM-V TO LK-MULTPARM-IN1-IM

           GOBACK
           .

      * vim: et ts=4 sw=4
