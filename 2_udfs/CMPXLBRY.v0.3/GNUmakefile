# GNUmakefile -- build the CMPXLBRY.v0.3 complex-number project with brcob.
#
# v0.3 re-expresses the v0.2 library in IBM Enterprise COBOL's modern idiom:
# every operation is a user-defined FUNCTION-ID and the complex/real types are
# IBM TYPEDEF/TYPE (copy/CTYPES.cpy).  This requires brcob with
# -dialect=ibm_ent65; it does NOT compile with gcobol, so (unlike v0.2) there
# are no GCOBOL-WORKAROUND-* and no dynamic-CALL dispatch table.
#
# The operation functions are compiled to position-independent, callable-only
# objects and bundled into libcmpx.so; the drivers MAIN and MULT reference the
# functions by name (statically, via REPOSITORY + the copy/CPROTO.cpy
# prototypes) and link against the library.  Because the references are
# resolved at link time (__br_func_* symbols), no --no-as-needed is needed.

BRLANG := 1
include ../../make.common
SRC    := src
COPY   := copy
OUT    := out

# Operation functions bundled into the shared library.
SUBS    := COMPLEX-ADD COMPLEX-SUB COMPLEX-MULT COMPLEX-DIVIDE \
           COMPLEX-INVERSE COMPLEX-SCALE COMPLEX-NEGATE COMPLEX-CONJUGATE \
           COMPLEX-REAL COMPLEX-IMAG COMPLEX-FORMAT
SUBOBJS := $(addprefix $(OUT)/,$(addsuffix .o,$(SUBS)))

LIB     := $(OUT)/libcmpx.so

# -dialect=ibm_ent65 enables TYPEDEF / TYPE / :: and user-defined functions (but it's the default, so need not be specified)
#COBCFLAGS += -dialect=ibm_ent65
COBCFLAGS += -I $(COPY)
COBLDFLAGS += -L $(OUT) -lcmpx

all : $(OUT)/main $(OUT)/mult

# Each operation function -> position-independent, callable-only object.
$(OUT)/%.o : $(SRC)/%.cob | $(OUT)
	$(COBCC) $(COBCFLAGS) -c -fPIC -nomain -o $@ $<

# Bundle the functions into the shared library.
$(LIB) : $(SUBOBJS)
	$(COBCC) -shared -o $@ $^

# Drivers: compile with a main() entry point and link against the library.
$(OUT)/main : $(SRC)/MAIN.cob $(LIB) | $(OUT)
	$(COBCC) $(COBCFLAGS) -main -o $@ $< $(COBLDFLAGS)

$(OUT)/mult : $(SRC)/MULT.cob $(LIB) | $(OUT)
	$(COBCC) $(COBCFLAGS) -main -o $@ $< $(COBLDFLAGS)

# Compare the driver output against the committed reference output.
check : all
	./$(OUT)/main | diff -u MAIN.expected -
	./$(OUT)/mult | diff -u MULT.expected -
	@echo "check: PASS"

$(OUT) :
	mkdir -p $(OUT)

clean :
	rm -rf $(OUT)

.PHONY : all check clean
