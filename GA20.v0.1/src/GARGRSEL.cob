       IDENTIFICATION DIVISION.
       PROGRAM-ID.    GARGRSEL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LOCAL-STORAGE SECTION.
       LINKAGE SECTION.
        COPY MV      REPLACING ==(PRFX)== BY ==L-IN-==.
        COPY INTEGER REPLACING ==(PRFX)== BY ==L-==.
        COPY MV      REPLACING ==(PRFX)== BY ==L-OUT-==.
       PROCEDURE DIVISION USING L-IN-MV, L-I, L-OUT-MV.
      ******************************************************************
      * @brief GA-GRADE-SELECTION-MV-RETURN
      *
      * @param [in] L-IN-MV,
      *   The multivector
      * @param [in] L-I,
      *   with members ...
      * @param [out] L-OUT-MV,
      *   The multivector
      *
           EVALUATE L-I
             WHEN 0 PERFORM SELECT-GRADE-0
             WHEN 1 PERFORM SELECT-GRADE-1
             WHEN 2 PERFORM SELECT-GRADE-2
           END-EVALUATE

           GOBACK
           .

        SELECT-GRADE-0.
           MOVE 0          TO L-OUT-GRADE
           MOVE L-IN-SC    TO L-OUT-SC
           MOVE 0          TO L-OUT-PS
           MOVE 0          TO L-OUT-X
           MOVE 0          TO L-OUT-Y
           .
        SELECT-GRADE-1.
           MOVE 1          TO L-OUT-GRADE
           MOVE 0          TO L-OUT-SC
           MOVE 0          TO L-OUT-PS
           MOVE L-IN-G1    TO L-OUT-G1
           .
        SELECT-GRADE-2.
           MOVE 2          TO L-OUT-GRADE
           MOVE 0          TO L-OUT-SC
           MOVE L-IN-PS    TO L-OUT-PS
           MOVE 0          TO L-OUT-X
           MOVE 0          TO L-OUT-Y
           .

      * vim: et ts=2 sw=2
