       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMSUB.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-SUBPARM-IN1-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-SUBPARM-IN2-==.
       PROCEDURE DIVISION USING
        LK-SUBPARM-IN1-COMPLEX,
        LK-SUBPARM-IN2-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-SUB
      *
      * @param [in,out] LK-SUBPARM-IN1-COMPLEX,
      *   with members LK-SUBPARM-IN1-RE, LK-SUBPARM-IN1-IM.
      * @param [in] LK-SUBPARM-IN2-COMPLEX,
      *   with members LK-SUBPARM-IN2-RE, LK-SUBPARM-IN2-IM.
      *
      *COMPLEX-SUB.
           COMPUTE LK-SUBPARM-IN1-RE =
             LK-SUBPARM-IN1-RE - LK-SUBPARM-IN2-RE

           COMPUTE LK-SUBPARM-IN1-IM =
             LK-SUBPARM-IN1-IM - LK-SUBPARM-IN2-IM

           GOBACK
           .

      * vim: et ts=4 sw=4
