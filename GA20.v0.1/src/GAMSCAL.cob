       IDENTIFICATION DIVISION.
       PROGRAM-ID.    GAMSCAL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LOCAL-STORAGE SECTION.
       LINKAGE SECTION.
        COPY MV    REPLACING ==(PRFX)== BY ==L-==.
        COPY FLOAT REPLACING ==(PRFX)== BY ==L-==.
       PROCEDURE DIVISION USING
        L-MV,
        L-V.
      ******************************************************************
      * @brief GA20-MKSCALAR-MODIFY
      *
      * @param [out] L-MV
      *   with members ...
      * @param [in] L-V
      *
           MOVE LOW-VALUES to L-MV
           MOVE L-V TO L-SC
           MOVE 0 TO L-GRADE

           GOBACK
           .

      * vim: et ts=4 sw=4
