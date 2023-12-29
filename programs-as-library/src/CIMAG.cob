       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CIMAG.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION USING
        LK-ADDPARM-IN1-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-IMAG
      *
      * @param [in] LK-IMAGPARM-COMPLEX,
      *   with members LK-IMAGPARM-RE, LK-IMAGPARM-IM.
      * @param [out] LK-IMAG-V,
       COMPLEX-IMAG.
           MOVE LK-IMAGPARM-IM TO LK-IMAG-V

           GOBACK
           .

      * vim: et ts=4 sw=4
