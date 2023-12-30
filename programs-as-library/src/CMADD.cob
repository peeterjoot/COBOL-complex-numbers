       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMADD.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-ADDPARM-IN1-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-ADDPARM-IN2-==.
       PROCEDURE DIVISION USING
        LK-ADDPARM-IN1-COMPLEX,
        LK-ADDPARM-IN2-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-ADD
      *
      * @param [in,out] LK-ADDPARM-IN1-COMPLEX,
      *   with members LK-ADDPARM-IN1-RE, LK-ADDPARM-IN1-IM.
      * @param [in] LK-ADDPARM-IN2-COMPLEX,
      *   with members LK-ADDPARM-IN2-RE, LK-ADDPARM-IN2-IM.
      *
      *COMPLEX-ADD.
           COMPUTE LK-ADDPARM-IN1-RE = 
             LK-ADDPARM-IN1-RE + LK-ADDPARM-IN2-RE

           COMPUTE LK-ADDPARM-IN1-IM = 
             LK-ADDPARM-IN1-IM + LK-ADDPARM-IN2-IM

           GOBACK
           .

      * vim: et ts=4 sw=4
