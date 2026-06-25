# GNUmakefile -- standalone repro for gcc PR125615.
#
# gcobol mis-rounds the trailing decimal digit when DISPLAYing a COMP-2
# (binary64) as external floating-point.  REPRO.cob stores the correctly-
# rounded IEEE-754 double of a single divide into a COMP-2 and DISPLAYs it;
# the printed 17-significant-digit decimal disagrees with the stored value.
#
#   make        # build + run with gcobol (shows the bug)
#   make brcob  # build + run with brcob   (correct, for comparison)

GCOBOL ?= /opt/gcc-trunk-20260606/bin/gcobol
ifeq ($(wildcard $(GCOBOL)),)
GCOBOL := gcobol
GCOBOL_LDFLAGS :=
else
GCOBOL_PREFIX  := $(patsubst %/bin/gcobol,%,$(GCOBOL))
GCOBOL_LDFLAGS := -Wl,-rpath,$(GCOBOL_PREFIX)/lib64
endif

all : run-gcobol

repro-gcobol : REPRO.cob
	$(GCOBOL) -dialect ibm -ffp-contract=off $< $(GCOBOL_LDFLAGS) -o $@

repro-brcob : REPRO.cob
	brcob $< -o $@

run-gcobol : repro-gcobol
	./repro-gcobol

brcob : repro-brcob
	./repro-brcob

clean :
	rm -f repro-gcobol repro-brcob

.PHONY : all run-gcobol brcob clean
