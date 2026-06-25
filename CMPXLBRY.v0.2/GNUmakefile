# GNUmakefile -- build the CMPXLBRY.v0.2 complex-number project with gcobol.
#
# The operation subprograms (CDISPLAY, CRADD, ...) are packaged into a shared
# library libcmpx.so; the drivers MAIN and MULT link against it. A shared
# library is required because every operation is reached through a *dynamic*
# CALL (e.g. CALL COMPLEX-DISPLAY, a data item holding 'CDISPLAY'), which
# gcobol resolves at run time via dlsym -- so the called units must export
# their entry symbols into the dynamic symbol table. See build.sh for a
# fully-commented walkthrough of every flag.
#
# Copybook note: copy/CDISPLAY.cpy was renamed to copy/CDISPLAYT.cpy (and its
# COPY references updated) because gcobol searches a source file's own
# directory before -I and treats .cob as a copybook extension, so program
# CDISPLAY.cob shadowed copybook CDISPLAY.cpy -- the same collision v0.1 hit
# with COMPLEX -> COMPLEXT.

include ../make.common
SRC    := src
COPY   := copy
OUT    := out

# Operation subprograms bundled into the shared library.
SUBS    := CDISPLAY CMADD CMCONJ CMDIV CMINV CMMULT CMNEGATE CMSCALE CMSUB \
           CRADD CRDIV CRIMAG CRINV CRMULT CRREAL CRSCALE CRSUB
SUBOBJS := $(addprefix $(OUT)/,$(addsuffix .o,$(SUBS)))

LIB     := $(OUT)/libcmpx.so

COBCFLAGS += -I $(COPY) -I ..
# --no-as-needed: keep libcmpx.so linked though no symbol is referenced at link
#   time (dynamic CALL has no link-time reference; the default would drop it).
COBLDFLAGS += -L $(OUT) -Wl,--no-as-needed -lcmpx

all : $(OUT)/main $(OUT)/mult

# Each operation subprogram -> position-independent, callable-only object.
$(OUT)/%.o : $(SRC)/%.cob | $(OUT)
	$(COBCC) $(COBCFLAGS) -c -fPIC -nomain -o $@ $<

# Bundle the subprograms into the shared library.
$(LIB) : $(SUBOBJS)
	$(COBCC) -shared -o $@ $^

# Drivers: compile with a main() entry point and link against the library.
$(OUT)/main : $(SRC)/MAIN.cob $(LIB) | $(OUT)
	$(COBCC) $(COBCFLAGS) -main -o $@ $< $(COBLDFLAGS)

$(OUT)/mult : $(SRC)/MULT.cob $(LIB) | $(OUT)
	$(COBCC) $(COBCFLAGS) -main -o $@ $< $(COBLDFLAGS)

$(OUT) :
	mkdir -p $(OUT)

clean :
	rm -rf $(OUT)

.PHONY : all clean
