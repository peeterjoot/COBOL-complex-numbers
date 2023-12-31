      ******************************************************************
      * copy/MVI.cpy, like copy/MV.cpy but with
      * initialization (don't use this version in LINKAGE-SECTION)
      ******************************************************************
       01 (PRFX)MV.
          05 (PRFX)GRADE
            COMP-2 VALUE 0.
          05 (PRFX)G02.
             10 (PRFX)SC
               COMP-2 VALUE 0.
             10 (PRFX)PS
               COMP-2 VALUE 0.
          05 (PRFX)G1.
             10 (PRFX)X
               COMP-2 VALUE 0.
             10 (PRFX)Y
               COMP-2 VALUE 0.
      ******************************************************************
