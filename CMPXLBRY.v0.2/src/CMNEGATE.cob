       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMNEGATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN1-==.
       PROCEDURE DIVISION USING
        L-IN1-COMPLEX.
      ******************************************************************
      * @brief COMPLEX-NEGATE-MODIFY
      *
      * @param [in,out] L-IN1-COMPLEX,
      *   with members L-IN-RE, L-IN-IM.
      *
           COMPUTE L-IN1-RE =
             L-IN1-RE * -1

           COMPUTE L-IN1-IM =
             L-IN1-IM * -1

           GOBACK
           .

      * vim: et ts=4 sw=4
