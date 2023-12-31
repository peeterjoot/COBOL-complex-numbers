       IDENTIFICATION DIVISION.
       PROGRAM-ID.    GARSCALE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LOCAL-STORAGE SECTION.
        COPY MV    REPLACING ==(PRFX)== BY ==W-TM-==.
        COPY CMPXLBRY.
       LINKAGE SECTION.
        COPY MV    REPLACING ==(PRFX)== BY ==L-IN-==.
        COPY FLOAT REPLACING ==(PRFX)== BY ==L-==.
        COPY MV    REPLACING ==(PRFX)== BY ==L-OUT-==.
       PROCEDURE DIVISION USING
        L-IN-MV,
        L-V,
        L-OUT-MV.
      ******************************************************************
      * @brief GA-SCALE-RETURN
      *
      * @param [in] L-IN-MV,
      * @param [out] L-OUT-MV,
      *
           MOVE L-IN-GRADE TO W-TM-GRADE

           CALL COMPLEX-SCALE-RETURN USING
             L-IN-G02,
             L-V,
             W-TM-G02

           CALL COMPLEX-SCALE-RETURN USING
             L-IN-G1,
             L-V,
             W-TM-G1

           MOVE W-TM-MV TO L-OUT-MV

           GOBACK
           .

      * vim: et ts=4 sw=4
