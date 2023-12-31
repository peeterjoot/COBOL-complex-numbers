       IDENTIFICATION DIVISION.
       PROGRAM-ID.    GADISP.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY GADISP REPLACING ==(PRFX)== BY ==L-IN-==.
        COPY MV REPLACING ==(PRFX)== BY ==L-IN-==.
       PROCEDURE DIVISION USING L-IN-N, L-IN-MV.
      ******************************************************************
      * @brief GA20-DISPLAY
      *
      * @param [in] L-IN-GA20,
      *   with members ...
      *
           DISPLAY L-IN-N ' GRADE: ' L-IN-GRADE
           DISPLAY L-IN-N ' 0: ' L-IN-SC
           DISPLAY L-IN-N ' 1: (' L-IN-X ', ' L-IN-Y ')'
           DISPLAY L-IN-N ' 2: ' L-IN-PS

           GOBACK
           .

      * vim: et ts=4 sw=4
