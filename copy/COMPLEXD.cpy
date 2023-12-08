      ******************************************************************
      * copy/COMPLEXI.cpy, like copy/COMPLEX.cpy but with
      * initialization (don't use this version in LINKAGE-SECTION)
       01  (PRFX)COMPLEX.
         10  (PRFX)RE
           PIC Z(7)9.9(8) SIGN IS LEADING SEPARATE CHARACTER.
         10  (PRFX)IM
           PIC Z(7)9.9(8) SIGN IS LEADING SEPARATE CHARACTER.
      ******************************************************************
