       IDENTIFICATION DIVISION.
       PROGRAM-ID.    GARSYM.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LOCAL-STORAGE SECTION.
        COPY MV      REPLACING ==(PRFX)== BY ==W-TM1-==.
        COPY MV      REPLACING ==(PRFX)== BY ==W-TM2-==.
        COPY GA20.
       LINKAGE SECTION.
        COPY MV REPLACING ==(PRFX)== BY ==L-IN1-==.
        COPY MV REPLACING ==(PRFX)== BY ==L-IN2-==.
        COPY MV REPLACING ==(PRFX)== BY ==L-OUT-==.
       PROCEDURE DIVISION USING
        L-IN1-MV,
        L-IN2-MV,
        L-OUT-MV.
      ******************************************************************
      * @brief GA-SYMMETRIC-RETURN
      *
      * @param [in] L-IN1-MV,
      * @param [in] L-IN2-MV,
      * @param [out] L-OUT-MV,
      *
           CALL GA-MULT-RETURN USING
             L-IN1-MV,
             L-IN2-MV,
             W-TM1-MV

           CALL GA-MULT-RETURN USING
             L-IN2-MV,
             L-IN1-MV,
             W-TM2-MV

           CALL GA-ADD-RETURN USING
             W-TM1-MV,
             W-TM2-MV,
             L-OUT-MV

           GOBACK
           .

      * vim: et ts=2 sw=2
