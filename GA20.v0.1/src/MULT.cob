       IDENTIFICATION DIVISION.
       PROGRAM-ID.    MULT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *LOCAL-STORAGE SECTION.
       COPY GA20.
       COPY MV REPLACING ==(PRFX)== BY ==A-==.
       COPY MV REPLACING ==(PRFX)== BY ==B-==.
       COPY MV REPLACING ==(PRFX)== BY ==C-==.
       COPY MV REPLACING ==(PRFX)== BY ==D-==.
       COPY MV REPLACING ==(PRFX)== BY ==E-==.
       COPY MV REPLACING ==(PRFX)== BY ==ONE-==.
       COPY GADISP REPLACING ==(PRFX)== BY ==WS-DISPPARM-==.
       PROCEDURE DIVISION.

           MOVE -1 TO A-GRADE
           MOVE 1 TO A-X
           MOVE 2 TO A-Y
           MOVE 3 TO A-SC
           MOVE 4 TO A-PS

           CALL GA-MKSCALAR-MODIFY USING ONE-MV, A-X
           CALL GA-MKSCALAR-MODIFY USING B-MV, A-SC
           CALL GA-MKVECTOR-MODIFY USING C-MV, A-X, A-Y
           CALL GA-MKPSEUDO-MODIFY USING D-MV, A-PS

           MOVE 'A' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             A-MV

           MOVE 'B' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             B-MV

           MOVE 'C' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             C-MV

           MOVE 'D' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             D-MV

           MOVE '1' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             ONE-MV

           CALL GA-MULT-RETURN USING
             A-MV,
             ONE-MV,
             E-MV

           MOVE 'E' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             E-MV

           GOBACK
           .

      * vim: et ts=4 sw=4
