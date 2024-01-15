       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMADD.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN1-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN2-==.
       PROCEDURE DIVISION USING
        L-IN1-COMPLEX,
        L-IN2-COMPLEX.
      ******************************************************************
      * @brief COMPLEX-ADD-MODIFY
      *
      * @param [in,out] L-IN1-COMPLEX,
      *   with members L-IN1-RE, L-IN1-IM.
      * @param [in] L-IN2-COMPLEX,
      *   with members L-IN2-RE, L-IN2-IM.
      *
           COMPUTE L-IN1-RE =
             L-IN1-RE + L-IN2-RE

           COMPUTE L-IN1-IM =
             L-IN1-IM + L-IN2-IM

           GOBACK
           .

      * vim: et ts=2 sw=2
