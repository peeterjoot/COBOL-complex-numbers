# GNUmakefile -- build the GA20.v0.1 geometric-algebra project with gcobol.
#
# MULT is the driver. The 12 GA* operation subprograms are packaged into
# libga.so. GA20 also depends on the sibling complex-number project
# ../CMPXLBRY.v0.2 in two ways:
#   * copybooks  -- COPY CMPXLBRY / COMPLEX / FLOAT / FLOATI come from
#                   ../CMPXLBRY.v0.2/copy (hence the second -I below);
#   * code       -- the GA ops dynamically CALL the complex ops (e.g.
#                   COMPLEX-ADD-MODIFY -> CMADD), which live in that project's
#                   libcmpx.so. We delegate to its makefile to build it, then
#                   link MULT against both libga.so and libcmpx.so.
#
# As in the sibling project, dynamic CALL is resolved at run time via dlsym,
# so both libraries must stay linked (--no-as-needed) and be locatable at run
# time (rpath). See ../CMPXLBRY.v0.2/build.sh for the full flag rationale.
#
# Copybook note: copy/GADISP.cpy was renamed to copy/GADISPT.cpy (COPY
# references updated) so program GADISP.cob no longer shadows it.

include ../../make.common
SRC    := src
COPY   := copy
OUT    := out

# Sibling complex-number project supplying copybooks and libcmpx.so.
CMPX    := ../CMPXLBRY.v0.2
CMPXLIB := $(CMPX)/out/libcmpx.so

# GA operation subprograms bundled into libga.so.
SUBS    := GADISP GAMMV GAMPSEU GAMSCAL GAMVEC GARADD GARANTI GARGRSEL \
           GARMULT GARSCALE GARSUB GARSYM
SUBOBJS := $(addprefix $(OUT)/,$(addsuffix .o,$(SUBS)))
LIB     := $(OUT)/libga.so

# Copybooks resolve from this project first, then the complex project.
COBCFLAGS += -I $(COPY) -I $(CMPX)/copy -I ../..

# Link the driver against both operation libraries. --no-as-needed keeps them
# linked despite no link-time reference (dynamic CALL); the two rpaths locate
# libga.so beside the executable and libcmpx.so in the sibling project's out/.
COBLDFLAGS += -L $(OUT) -L $(CMPX)/out -Wl,--no-as-needed -lga -lcmpx \
          -Wl,-rpath,'$$ORIGIN/../$(CMPX)/out'

all : $(OUT)/mult

# Each GA operation subprogram -> position-independent, callable-only object.
$(OUT)/%.o : $(SRC)/%.cob | $(OUT)
	$(COBCC) $(COBCFLAGS) -c -fPIC -nomain -o $@ $<

# Bundle the GA subprograms into the shared library.
$(LIB) : $(SUBOBJS)
	$(COBCC) -shared -o $@ $^

# Delegate to the sibling project for the complex-operations library.
$(CMPXLIB) : force
	$(MAKE) -C $(CMPX) out/libcmpx.so

# Driver: compile with a main() entry and link against both libraries.
$(OUT)/mult : $(SRC)/MULT.cob $(LIB) $(CMPXLIB) | $(OUT)
	$(COBCC) $(COBCFLAGS) -main -o $@ $< $(COBLDFLAGS)

$(OUT) :
	mkdir -p $(OUT)

clean :
	rm -rf $(OUT)

check :
	./out/mult  | diff -wup - ./MULT.expected
	@echo PASS

.PHONY : all clean force
force :
