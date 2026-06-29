      ******************************************************************
      * GCWA.cpy - gcobol workaround master switch
      *
      * Work around GNU COBOL bugs.  Initially had a flag for
      * 
      *
      * Affected bugs:
      *   - LOCAL-STORAGE output not written for a subprogram CALLed at
      *     depth >= 2: GARMULT -- this one needs a bug report.
      ******************************************************************
       >>IF BRCOB DEFINED
       >>DEFINE GCOBOL-WORKAROUND-LS AS 0
       >>ELSE
       >>DEFINE GCOBOL-WORKAROUND-LS AS 1
       >>END-IF
