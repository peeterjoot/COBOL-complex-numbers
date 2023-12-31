       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRREAL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN-==.
        COPY FLOAT   REPLACING ==(PRFX)== BY ==L-OUT-==.
       PROCEDURE DIVISION USING
        L-IN-COMPLEX,
        L-OUT-V.
      ******************************************************************
      * @bried COMPLEX-REAL-RETURN
      *
      * @param [in] L-IN-COMPLEX,
      *   with members L-IN-RE, L-IN-IM.
      * @param [out] LK-REAL-V,
           MOVE L-IN-RE TO L-OUT-V

           GOBACK
           .

      * vim: et ts=4 sw=4
