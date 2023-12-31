       IDENTIFICATION DIVISION.
       PROGRAM-ID.    MULT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY GA20.
       COPY MV REPLACING ==(PRFX)== BY ==A-==.
       COPY MV REPLACING ==(PRFX)== BY ==B-==.
       COPY GADISP REPLACING ==(PRFX)== BY ==WS-DISPPARM-==.
       PROCEDURE DIVISION.

           MOVE -1 TO A-GRADE
           MOVE 1 TO A-X
           MOVE 2 TO A-Y
           MOVE 3 TO A-SC
           MOVE 4 TO A-PS

           CALL GA-MKSCALAR-MODIFY USING B-MV, A-SC

           MOVE 'A' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             A-MV

           MOVE 'B' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             B-MV

      *    CALL COMPLEX-MULT-RETURN USING
      *      WS-V1-COMPLEX,
      *      WS-V2-COMPLEX,
      *      WS-MULTPARM-OUT-COMPLEX

           GOBACK
           .

      * vim: et ts=4 sw=4
