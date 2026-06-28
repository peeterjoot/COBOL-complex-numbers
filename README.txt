0_paragraph/CMPXLBRY.v0.1/

   This is a single module toy complex number implementation in COBOL.
   A naming convention for global variables is used to simulate functions using COBOL paragraphs.

1_subprograms/
    CMPXLBRY.v0.2/

       This is a multiple module toy complex number implementation in COBOL using external programs to implement
        the low level complex number operations.

    GA20.v0.1/

       This is an implementation of a 2D Euclidean geometric algebra, implemented with a triplet {grade, complex, complex}.  The first
       complex number represents the scalar and pseudoscalar grades, and the second represents the vector grade.

2_udfs/
    CMPXLBRY.v0.3/

       This is a Enterprise Cobol 6.4+6.5 (6.4 for UDFs and 6.5 for TYPEDEF/TYPE) based reimplemenation of CMPXLBRY.v0.2 that uses "User Defined Functions" instead of programs.

    GA20.v0.2/

       This is a User Defined Function reimplementation of GA20.v0.1, layered on the CMPXLBRY.v0.3 complex-number UDFs.  The multivector is a TYPEDEF whose {grade, complex, complex} triplet reuses CMPXLBRY.v0.3's complex TYPE, so each operation delegates to the COMPLEX-* functions.  GA-DISPLAY remains an ordinary program (a static CALL), since a display is a side effect rather than a value.

c++-complex-multiply/

   Two programs that are the logical equivalent of programs-as-library/src/MULT.cob for comparision purposes.
