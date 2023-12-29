       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CREAL.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-REAL-IN==.
        COPY FLOAT REPLACING ==(PRFX)== BY ==LK-REAL-OUT-==.
       PROCEDURE DIVISION.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-REAL
      *
      * @param [in] WS-REALPARM-COMPLEX,
      *   with members WS-REALPARM-RE, WS-REALPARM-IM.
      * @param [out] WS-REAL-V,
       COMPLEX-REAL.
           MOVE WS-REALPARM-RE TO WS-REAL-V

           GOBACK
           .

      * vim: et ts=4 sw=4
