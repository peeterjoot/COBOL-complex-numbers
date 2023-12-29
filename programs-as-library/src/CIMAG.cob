       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CIMAG.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-IMAG
      *
      * @param [in] WS-IMAGPARM-COMPLEX,
      *   with members WS-IMAGPARM-RE, WS-IMAGPARM-IM.
      * @param [out] WS-IMAG-V,
       COMPLEX-IMAG.
           MOVE WS-IMAGPARM-IM TO WS-IMAG-V

           GOBACK
           .

      * vim: et ts=4 sw=4
