       IDENTIFICATION DIVISION.
       PROGRAM-ID.    MULT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *LOCAL-STORAGE SECTION.
       COPY GA20.
       COPY MV      REPLACING ==(PRFX)== BY ==A-==.
       COPY MV      REPLACING ==(PRFX)== BY ==B-==.
       COPY MV      REPLACING ==(PRFX)== BY ==C-==.
       COPY MV      REPLACING ==(PRFX)== BY ==D-==.
       COPY MV      REPLACING ==(PRFX)== BY ==E-==.
       COPY MV      REPLACING ==(PRFX)== BY ==F-==.
       COPY MV      REPLACING ==(PRFX)== BY ==G-==.
       COPY MV      REPLACING ==(PRFX)== BY ==H-==.
       COPY MV      REPLACING ==(PRFX)== BY ==K-==.
       COPY MV      REPLACING ==(PRFX)== BY ==S1-==.
       COPY MV      REPLACING ==(PRFX)== BY ==S2-==.
       COPY MV      REPLACING ==(PRFX)== BY ==R-==.
       COPY FLOAT   REPLACING ==(PRFX)== BY ==ZS-==.
       COPY FLOAT   REPLACING ==(PRFX)== BY ==ONE-S-==.
       COPY FLOAT   REPLACING ==(PRFX)== BY ==TWO-S-==.
       COPY FLOAT   REPLACING ==(PRFX)== BY ==THREE-S-==.
       COPY FLOAT   REPLACING ==(PRFX)== BY ==FOUR-S-==.
       COPY MV      REPLACING ==(PRFX)== BY ==ONE-==.
       COPY MV      REPLACING ==(PRFX)== BY ==E1-==.
       COPY MV      REPLACING ==(PRFX)== BY ==E2-==.
       COPY MV      REPLACING ==(PRFX)== BY ==E12-==.
       COPY INTEGER REPLACING ==(PRFX)== BY ==WS-GR-==.
       COPY GADISP  REPLACING ==(PRFX)== BY ==WS-DISPPARM-==.
       PROCEDURE DIVISION.

           MOVE 0 TO ZS-V
           MOVE 1 TO ONE-S-V
           MOVE 2 TO TWO-S-V
           MOVE 3 TO THREE-S-V
           MOVE 4 TO FOUR-S-V

           CALL GA-MKMV-MODIFY USING
             A-MV,
             ONE-S-V,
             TWO-S-V,
             THREE-S-V,
             FOUR-S-V

           CALL GA-MKSCALAR-MODIFY USING ONE-MV, ONE-S-V
           CALL GA-MKVECTOR-MODIFY USING E1-MV, ONE-S-V, ZS-V
           CALL GA-MKVECTOR-MODIFY USING E2-MV, ZS-V, ONE-S-V
           CALL GA-MKPSEUDO-MODIFY USING E12-MV, ONE-S-V

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

           MOVE 'e_1' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             E1-MV

           MOVE 'e_2' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             E2-MV

           MOVE 'e_{12}' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             E12-MV

           CALL GA-MULT-RETURN USING
             A-MV,
             ONE-MV,
             E-MV

           MOVE 'A * 1' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             E-MV

           CALL GA-MULT-RETURN USING
             A-MV,
             E1-MV,
             F-MV

           MOVE 'A * e_1' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             F-MV

           CALL GA-MULT-RETURN USING
             A-MV,
             E2-MV,
             G-MV

           MOVE 'A * e_2' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             G-MV

           CALL GA-MULT-RETURN USING
             A-MV,
             E12-MV,
             H-MV

           MOVE 'A * e_{12}' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             H-MV

           CALL GA-SCALE-RETURN USING
             A-MV,
             TWO-S-V,
             K-MV

           MOVE 'A * 2' TO WS-DISPPARM-N
           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             K-MV

           MOVE 'e_1 e_2 + e_2 e_1' TO WS-DISPPARM-N
           MOVE E1-MV TO S1-MV
           MOVE E2-MV TO S2-MV
           PERFORM SYMMETRIC

           MOVE 'e_1 e_2 - e_2 e_1' TO WS-DISPPARM-N
           PERFORM ANTISYMMETRIC

           MOVE E1-MV TO S2-MV
           MOVE 'e_1 e_1 + e_1 e_1' TO WS-DISPPARM-N
           PERFORM SYMMETRIC
           MOVE 'e_1 e_1 - e_1 e_1' TO WS-DISPPARM-N
           PERFORM ANTISYMMETRIC

           MOVE '<A>_0' TO WS-DISPPARM-N
           MOVE 0 TO WS-GR-I
           PERFORM GRADE-SELECT

           MOVE '<A>_1' TO WS-DISPPARM-N
           MOVE 1 TO WS-GR-I
           PERFORM GRADE-SELECT

           MOVE '<A>_2' TO WS-DISPPARM-N
           MOVE 2 TO WS-GR-I
           PERFORM GRADE-SELECT

           GOBACK
           .

        GRADE-SELECT.
           CALL GA-GRADE-SELECTION-MV-RETURN USING
             A-MV,
             WS-GR-I,
             R-MV

           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             R-MV
           .
        SYMMETRIC.
           CALL GA-SYMMETRIC-RETURN USING
             S1-MV,
             S2-MV,
             R-MV

           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             R-MV
           .
        ANTISYMMETRIC.
           CALL GA-ANTISYMMETRIC-RETURN USING
             S1-MV,
             S2-MV,
             R-MV

           CALL GA-DISPLAY USING
             WS-DISPPARM-N,
             R-MV
           .

      * vim: et ts=4 sw=4
