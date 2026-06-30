# GNUmakefile -- build the GA20.v0.2 geometric-algebra project with brcob.
#
# v0.2 re-expresses the v0.1 library (PROGRAM-ID subprograms + dynamic CALL)
# in IBM Enterprise COBOL's modern idiom: every operation is a user-defined
# FUNCTION-ID and the multivector/complex/real types are IBM TYPEDEF/TYPE
# (copy/GATYPES.cpy, which COPYs the sibling complex library's CTYPES).  This
# requires brcob with -dialect=ibm_ent65 and does NOT compile with gcobol, so
# there are no GCOBOL-WORKAROUND-* and no dynamic-CALL dispatch table.
#
# A multivector's two halves are TYPE COMPLEX-T, so the GA operations delegate
# straight to the COMPLEX-* user functions of the sibling project
# ../CMPXLBRY.v0.3.  That project supplies:
#   * copybooks -- CTYPES (types), CPROTO (complex prototypes), CREPOS
#                  (complex REPOSITORY members), via the second -I below;
#   * code      -- the complex UDFs in its libcmpx.so.
# We delegate to its makefile to build the library, link libga.so against it
# (so libga is self-contained), and link the driver against both.
#
# References are resolved statically (__br_func_* symbols), so --no-as-needed
# is not needed; rpaths locate libga.so beside the executable and libcmpx.so
# in the sibling project's out/.

BRLANG := 1
include ../../make.common
SRC    := src
COPY   := copy
OUT    := out

# Sibling complex-number project supplying copybooks and libcmpx.so.
CMPX    := ../CMPXLBRY.v0.3
CMPXLIB := $(CMPX)/out/libcmpx.so

#COBCFLAGS += -g
COBCFLAGS += -O2

#INTERNALS := 1

# GA operation functions bundled into libga.so.
SUBS    := GA-MAKE-MV GA-MAKE-SCALAR GA-MAKE-VECTOR GA-MAKE-PSEUDO \
           GA-ADD GA-SUB GA-SCALE GA-MULT GA-SYMMETRIC GA-ANTISYMMETRIC \
           GA-GRADE-SELECT GA-DISPLAY
SUBOBJS := $(addprefix $(OUT)/,$(addsuffix .o,$(SUBS)))
LIB     := $(OUT)/libga.so

# rpath to locate libcmpx.so (in the sibling out/) from a binary in this out/.
CMPXRPATH := -Wl,-rpath,'$$ORIGIN/../$(CMPX)/out'

# Copybooks resolve from this project first, then the complex project.
COBCFLAGS += -I $(COPY) -I $(CMPX)/copy

all : $(OUT)/mult

# Each GA operation function -> position-independent, callable-only object.
$(OUT)/%.o : $(SRC)/%.cob | $(OUT)
	$(COBCC) $(COBCFLAGS) -c -fPIC -nomain -o $@ $<
ifdef INTERNALS
	$(COBCC) $(COBCFLAGS) -c -fPIC -nomain --emit-llvm -o out/$*.ll $<
	$(COBCC) $(COBCFLAGS) -c -fPIC -nomain --emit-mlir -o out/$*.mlir $<
endif

# Bundle the GA functions into libga.so, linked against libcmpx.so (the GA
# ops call the COMPLEX-* UDFs) so the library carries its own dependency.
$(LIB) : $(SUBOBJS) $(CMPXLIB)
	$(COBCC) -shared -o $@ $(SUBOBJS) -L $(CMPX)/out -lcmpx $(CMPXRPATH)

# Delegate to the sibling project for the complex-operations library.
$(CMPXLIB) : force
	$(MAKE) -C $(CMPX) out/libcmpx.so

# Driver: compile with a main() entry and link against both libraries.
$(OUT)/mult : $(SRC)/MULT.cob $(LIB) $(CMPXLIB) | $(OUT)
	$(COBCC) $(COBCFLAGS) -main -o $@ $< -L $(OUT) -lga \
	  -L $(CMPX)/out -lcmpx $(CMPXRPATH) $(COBLDFLAGS)
ifdef INTERNALS
	$(COBCC) $(COBCFLAGS) -main -c --emit-llvm -o out/$*.ll $<
	$(COBCC) $(COBCFLAGS) -main -c --emit-mlir -o out/$*.mlir $<
endif

# Compare the driver output against the committed reference output.
check : all
	./$(OUT)/mult | diff -u MULT.expected -
	@echo "check: PASS"

$(OUT) :
	mkdir -p $(OUT)

clean :
	rm -rf $(OUT)

.PHONY : all check clean force
force :
