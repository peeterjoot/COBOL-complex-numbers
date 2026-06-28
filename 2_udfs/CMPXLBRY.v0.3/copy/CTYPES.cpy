      ******************************************************************
      * copy/CTYPES.cpy -- complex-number data model (IBM TYPEDEF/TYPE).
      *
      * A complex value is a pair of IEEE doubles.  Unlike v0.2's
      * COPY ... REPLACING LEADING ==PRFX== text substitution, the
      * member names are uniform across every instance and reached with
      * the :: qualifier, e.g. A::CT-RE, A::CT-IM.
      *
      * Requires -dialect=ibm_ent65 (TYPEDEF / TYPE / :: support).
      ******************************************************************
       01  REAL-T IS TYPEDEF USAGE COMP-2.
       01  COMPLEX-T IS TYPEDEF.
           05  CT-RE   USAGE COMP-2.
           05  CT-IM   USAGE COMP-2.
      * A native binary integer, used here for COMPLEX-FORMAT's [out]
      * text-length parameter (the meaningful length of its result).
       01  STATUS-T IS TYPEDEF PIC S9(9) USAGE COMP-5.
      ******************************************************************
