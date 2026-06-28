      ******************************************************************
      * copy/GATYPES.cpy -- G(2,0) multivector data model (TYPEDEF/TYPE).
      *
      * A multivector is split into two complex-valued halves, reusing the
      * sibling complex library's COMPLEX-T (copy/CTYPES.cpy, COPY'd here):
      *
      *   MV-G02  the even grades  -- scalar (grade 0) in CT-RE,
      *                               pseudoscalar e_{12} (grade 2) in CT-IM
      *           (e_{12}^2 = -1, so the even subalgebra is isomorphic to C)
      *   MV-G1   the vector grade -- e_1 in CT-RE, e_2 in CT-IM
      *
      * Members are reached with the :: qualifier, e.g. A::MV-G02::CT-RE
      * (the scalar part) or A::MV-G1::CT-IM (the e_2 coordinate).  Casting
      * the halves as COMPLEX-T lets the GA operations delegate straight to
      * the COMPLEX-* user functions.
      *
      * MV-GRADE records which grade(s) are present (0,1,2, or -1 for a
      * general multivector); it drives GA-DISPLAY's layout.
      *
      * Requires -dialect=ibm_ent65 (TYPEDEF / TYPE / :: support).
      ******************************************************************
        COPY CTYPES.
      * A grade: 0, 1 or 2, or -1 for a general multivector.  Used for the
      * MV-GRADE field and for GA-GRADE-SELECT's index argument.
       01  GRADE-T   IS TYPEDEF PIC S9(9) USAGE COMP-5.
       01  MV-T IS TYPEDEF.
           05  MV-GRADE  TYPE GRADE-T.
           05  MV-G02    TYPE COMPLEX-T.
           05  MV-G1     TYPE COMPLEX-T.
      ******************************************************************
