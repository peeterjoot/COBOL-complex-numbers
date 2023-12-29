       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMCONJ.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-CONJPARM-==.
       PROCEDURE DIVISION USING
        LK-CONJPARM-COMPLEX.

      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-CONJUGATE
      *
      * @param [in,out] LK-CONJPARM-COMPLEX,
      *   with members LK-CONJPARM-RE, LK-CONJPARM-IM.
      *
      * Side effects: sign of LK-CONJPARM-IM is toggled.
      *
       COMPLEX-CONJUGATE.
           COMPUTE LK-CONJPARM-IM = LK-CONJPARM-IM * -1

           GOBACK
           .

      * vim: et ts=4 sw=4
