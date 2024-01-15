       IDENTIFICATION DIVISION.
       PROGRAM-ID.    GAMMV.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LOCAL-STORAGE SECTION.
       LINKAGE SECTION.
        COPY MV    REPLACING ==(PRFX)== BY ==L-==.
        COPY FLOAT REPLACING ==(PRFX)== BY ==L-SC-==.
        COPY FLOAT REPLACING ==(PRFX)== BY ==L-X-==.
        COPY FLOAT REPLACING ==(PRFX)== BY ==L-Y-==.
        COPY FLOAT REPLACING ==(PRFX)== BY ==L-PS-==.
       PROCEDURE DIVISION USING
        L-MV,
        L-SC-V,
        L-X-V,
        L-Y-V,
        L-PS-V.
      ******************************************************************
      * @brief GA20-MKMV-MODIFY
      *
      * @param [out] L-MV
      *   with members ...
      * @param [in] L-V
      *
           MOVE L-SC-V TO L-SC
           MOVE L-X-V  TO L-X
           MOVE L-Y-V  TO L-Y
           MOVE L-PS-V TO L-PS
           MOVE -1     TO L-GRADE

           GOBACK
           .

      * vim: et ts=2 sw=2
