       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMCONJ.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-==.
       PROCEDURE DIVISION USING
        L-COMPLEX.

      ******************************************************************
      * @brief COMPLEX-CONJUGATE-MODIFY
      *
      * @param [in,out] L-COMPLEX,
      *   with members L-RE, L-IM.
      *
      * Side effects: sign of L-IM is toggled.
      *
           COMPUTE L-IM = L-IM * -1

           GOBACK
           .

      * vim: et ts=4 sw=4
