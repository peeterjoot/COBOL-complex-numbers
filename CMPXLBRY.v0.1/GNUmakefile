# GNUmakefile -- build the CMPXLBRY.v0.1 complex-number program with gcobol.
#
# Single program unit (src/COMPLEX.cob) built straight to an executable.
# Copybook note: copy/COMPLEX.cpy was renamed to copy/COMPLEXT.cpy (and its
# COPY references updated) because gcobol searches a source file's own
# directory before -I and treats .cob as a copybook extension, so program
# COMPLEX.cob shadowed copybook COMPLEX.cpy.

GCOBOL := gcobol
SRC    := src
COPY   := copy
OUT    := out

all : $(OUT)/complex

$(OUT)/complex : $(SRC)/COMPLEX.cob | $(OUT)
	$(GCOBOL) $< -I $(COPY) -o $@

$(OUT) :
	mkdir -p $(OUT)

clean :
	rm -rf $(OUT)

.PHONY : all clean
