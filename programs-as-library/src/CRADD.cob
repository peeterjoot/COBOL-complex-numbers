       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRADD.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-ADDPARM-IN1-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-ADDPARM-IN2-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-ADDPARM-OUT-==.
       PROCEDURE DIVISION USING
        LK-ADDPARM-IN1-COMPLEX,
        LK-ADDPARM-IN2-COMPLEX,
        LK-ADDPARM-OUT-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-ADD
      *
      * @param [in] LK-ADDPARM-IN1-COMPLEX,
      *   with members LK-ADDPARM-IN1-RE, LK-ADDPARM-IN1-IM.
      * @param [in] LK-ADDPARM-IN2-COMPLEX,
      *   with members LK-ADDPARM-IN2-RE, LK-ADDPARM-IN2-IM.
      * @param [out] LK-ADDPARM-OUT-COMPLEX,
      *   with members LK-ADDPARM-OUT-RE, LK-ADDPARM-OUT-IM.
      *
      *COMPLEX-ADD.
           COMPUTE LK-ADDPARM-OUT-RE =
             LK-ADDPARM-IN1-RE + LK-ADDPARM-IN2-RE

           COMPUTE LK-ADDPARM-OUT-IM =
             LK-ADDPARM-IN1-IM + LK-ADDPARM-IN2-IM

           GOBACK
           .

      * vim: et ts=4 sw=4
