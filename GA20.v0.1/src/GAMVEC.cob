       IDENTIFICATION DIVISION.
       PROGRAM-ID.    GAMVEC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LOCAL-STORAGE SECTION.
       LINKAGE SECTION.
        COPY MV    REPLACING ==(PRFX)== BY ==L-==.
        COPY FLOAT REPLACING ==(PRFX)== BY ==L-X-==.
        COPY FLOAT REPLACING ==(PRFX)== BY ==L-Y-==.
       PROCEDURE DIVISION USING
        L-MV,
        L-X-V,
        L-Y-V.
      ******************************************************************
      * @brief GA20-MKSCALAR-MODIFY
      *
      * @param [out] L-MV
      *   with members ...
      * @param [in] L-V
      *
           MOVE LOW-VALUES to L-MV
           MOVE L-X-V TO L-X
           MOVE L-Y-V TO L-Y
           MOVE 1 TO L-GRADE

           GOBACK
           .

      * vim: et ts=4 sw=4
