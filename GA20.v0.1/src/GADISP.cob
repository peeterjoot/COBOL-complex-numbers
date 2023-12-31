       IDENTIFICATION DIVISION.
       PROGRAM-ID.    GADISP.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 WS-PLUS PIC XX VALUE '  '.
        COPY GADISP REPLACING ==(PRFX)== BY ==WS-PREFIX-==.
       LINKAGE SECTION.
        COPY GADISP REPLACING ==(PRFX)== BY ==L-IN-==.
        COPY MV REPLACING ==(PRFX)== BY ==L-IN-==.
       PROCEDURE DIVISION USING L-IN-N, L-IN-MV.
      ******************************************************************
      * @brief GA20-DISPLAY
      *
      * @param [in] L-IN-GA20,
      *   with members ...
      *
           MOVE L-IN-N TO WS-PREFIX-N

           EVALUATE L-IN-GRADE
             WHEN 0 PERFORM DISPLAY-GRADE-0
             WHEN 1 PERFORM DISPLAY-GRADE-1
             WHEN 2 PERFORM DISPLAY-GRADE-2
             WHEN OTHER PERFORM DISPLAY-MV
           END-EVALUATE

           GOBACK
           .

        DISPLAYED-NONZERO.
           MOVE '+ ' TO WS-PLUS
           MOVE SPACES TO WS-PREFIX-N
           .
        DISPLAY-GRADE-0.
           IF L-IN-SC NOT = 0
             DISPLAY WS-PREFIX-N '(' L-IN-SC ')'
             PERFORM DISPLAYED-NONZERO
           END-IF
           .
        DISPLAY-GRADE-1.
           IF L-IN-X NOT = 0
             IF L-IN-Y NOT = 0
               DISPLAY WS-PREFIX-N WS-PLUS 
                 '( ' L-IN-X ') e_1 + (' L-IN-Y ') e_2'
               PERFORM DISPLAYED-NONZERO
             END-IF
           ELSE IF L-IN-Y NOT = 0
             DISPLAY WS-PREFIX-N '(' L-IN-Y ') e_2'
             PERFORM DISPLAYED-NONZERO
           END-IF
           .
        DISPLAY-GRADE-2.
           IF L-IN-PS NOT = 0
             DISPLAY WS-PREFIX-N WS-PLUS '(' L-IN-PS ') e_{12}'
             PERFORM DISPLAYED-NONZERO
           END-IF
           .
        DISPLAY-MV.
           PERFORM DISPLAY-GRADE-0 THROUGH DISPLAY-GRADE-2
           IF WS-PLUS = SPACES
             DISPLAY WS-PREFIX-N 0
           END-IF
           .

      * vim: et ts=4 sw=4
