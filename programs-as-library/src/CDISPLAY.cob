       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CDISPLAY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        COPY FLOAT REPLACING ==(PRFX)== BY ==LK-TMP-IM-==.
       LINKAGE SECTION.
        COPY CDISPLAY REPLACING ==(PRFX)== BY ==LK-DISP-IN-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-DISP-IN-==.
       PROCEDURE DIVISION USING LK-DISP-IN-N, LK-DISP-IN-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-DISPLAY
      *
      * @param [in] LK-DISP-IN-COMPLEX,
      *   with members LK-DISP-IN-RE, LK-DISP-IN-IM.
      *COMPLEX-DISPLAY.
           IF LK-DISP-IN-IM IS EQUAL ZERO
             DISPLAY LK-DISP-IN-N ' = ' LK-DISP-IN-RE
           ELSE
             IF LK-DISP-IN-IM > ZERO
               DISPLAY LK-DISP-IN-N ' = ' LK-DISP-IN-RE ' + ('
                    LK-DISP-IN-IM
                    ') I'
             ELSE
               COMPUTE LK-TMP-IM-V = LK-DISP-IN-IM * -1

               DISPLAY LK-DISP-IN-N ' = ' LK-DISP-IN-RE ' - ('
                    LK-TMP-IM-V
                    ') I'
             END-IF
           END-IF

           GOBACK
           .

      * vim: et ts=4 sw=4
