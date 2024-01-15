       IDENTIFICATION DIVISION.
       PROGRAM-ID.    GARSUB.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LOCAL-STORAGE SECTION.
        COPY MV      REPLACING ==(PRFX)== BY ==W-TM-==.
        COPY CMPXLBRY.
       LINKAGE SECTION.
        COPY MV REPLACING ==(PRFX)== BY ==L-IN1-==.
        COPY MV REPLACING ==(PRFX)== BY ==L-IN2-==.
        COPY MV REPLACING ==(PRFX)== BY ==L-OUT-==.
       PROCEDURE DIVISION USING
        L-IN1-MV,
        L-IN2-MV,
        L-OUT-MV.
      ******************************************************************
      * @brief GA-SUB-RETURN
      *
      * @param [in] L-IN1-MV,
      * @param [in] L-IN2-MV,
      * @param [out] L-OUT-MV,
      *
           IF L-IN1-GRADE = L-IN2-GRADE
             MOVE L-IN1-GRADE TO W-TM-GRADE
           ELSE
             MOVE -1 TO W-TM-GRADE
           END-IF
           .

           CALL COMPLEX-SUB-RETURN USING
             L-IN1-G02,
             L-IN2-G02,
             W-TM-G02

           CALL COMPLEX-SUB-RETURN USING
             L-IN2-G1,
             L-IN2-G1,
             W-TM-G1

           MOVE W-TM-MV TO L-OUT-MV

           GOBACK
           .

      * vim: et ts=2 sw=2
