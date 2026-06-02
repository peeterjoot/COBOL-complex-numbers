      ******************************************************************
      * GCWA.cpy - gcobol workaround master switch
      *
      * Set GCOBOL-WORKAROUNDS to 1 to compile the workarounds for the
      * gcobol (GCC 15.2.0) bugs, or to 0 to compile the clean standard
      * code (use 0 to confirm a future gcobol release has fixed them).
      *
      * Affected bugs:
      *   - COMP-2 subtraction / unary minus miscompiled (returns a stale
      *     temporary): CRSUB CMSUB CRMULT CMMULT CRINV CMINV, COMPLEX.cob
      *   - LOCAL-STORAGE output not written for a subprogram CALLed at
      *     depth >= 2: GARMULT
      ******************************************************************
       >>IF GCOBOL-WORKAROUNDS NOT DEFINED
       >>DEFINE GCOBOL-WORKAROUNDS AS 1
       >>END-IF
