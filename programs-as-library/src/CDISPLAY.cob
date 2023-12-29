       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CDISPLAY.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
      * 01 PARAMS.
        COPY CDISPLAY REPLACING ==(PRFX)== BY ==LK-DISP-IN-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-DISP-IN-==.
       PROCEDURE DIVISION USING LK-DISP-IN-N, LK-DISP-IN-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: CDISPLAY
      *
      * @param [in] LK-DISP-IN-COMPLEX,
      *   with members LK-DISP-IN-RE, LK-DISP-IN-IM.
       COMPLEX-DISPLAY.
           IF LK-DISP-IN-IM IS EQUAL ZERO
             DISPLAY LK-DISP-IN-N ' = ' LK-DISP-IN-RE
           ELSE
             DISPLAY LK-DISP-IN-N ' = ' LK-DISP-IN-RE ' + ('
                  LK-DISP-IN-IM
                  ') I'
           END-IF

           GOBACK
           .

      * vim: et ts=4 sw=4
