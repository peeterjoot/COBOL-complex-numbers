# DO NOT EDIT.  GENERATED WITH lz_mkmake version 0.7.14: '/usr/bin/lz_mkmake --scope --no-bind --source x.in --cobload PJOOT.SAMPLE.COMPLEX --cobsuff cob --outdir out'


OUTDIR := out

DOSCOPE := 1
NOBIND := 1

ASMSUFF := asm
COBSUFF := cob
PLISUFF := pli

include make.vars


OBJECTS_complex += out/src/COMPLEX.o
OBJECTS += $(OBJECTS_complex)
ENTRIES += complex
SHAREDS += out/src/liblz_pgm_complex.so
ALLOCTARGETS += out/PJOOT.SAMPLE.COMPLEX.allocate.ts

.PHONY: clean shareds pdses objects


all :: objects


PDSES := $(patsubst %.so,%.pds,$(SHAREDS))

all :: shareds


all :: pdses


objects :: $(OBJECTS)

ifdef PREBUILD
$(OBJECTS) :: | $(PREBUILD)
endif


shareds :: $(SHAREDS)

# The 'shared' target is deprecated (added for compatibility with LzLanguage/.../scripts/mkmake, and will be removed later.)
shared : shareds


pdses :: $(PDSES)


out/src/liblz_pgm_complex.so : $(OBJECTS_complex)
	$(call SAYWHAT,out/src/liblz_pgm_complex.so)
	$(Q)rm -f 'out/src/liblz_pgm_complex.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_complex.so' $(patsubst %,'%',$(OBJECTS_complex)) $(LDFLAGS) $(LDFLAGS_complex)

.PHONY: allocate
allocate : $(ALLOCTARGETS)

shareds :: allocate

out/PJOOT.SAMPLE.COMPLEX.allocate.ts :
ifndef NODELETEPDS
	$(Q)-$(LZDELETE) 'PJOOT.SAMPLE.COMPLEX' >/dev/null 2>&1
endif
	$(call SAYWHAT,PJOOT.SAMPLE.COMPLEX)
	$(Q)mkdir -p $(CLITMPPATHDIR)
	$(Q)$(LZALLOCATE) 'dataset(PJOOT.SAMPLE.COMPLEX) MOD CATALOG DIR(1) DSORG(PO) RECFM(U) BLKSIZE(8192) ' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/PJOOT.SAMPLE.COMPLEX.allocate.ts'



clean ::
	-$(LZDELETE) 'PJOOT.SAMPLE.COMPLEX'
	rm -f out/PJOOT.SAMPLE.COMPLEX.allocate.ts

out/src/liblz_pgm_complex.pds : out/PJOOT.SAMPLE.COMPLEX.allocate.ts out/src/liblz_pgm_complex.so
	$(call SAYWHAT,PJOOT.SAMPLE.COMPLEX(COMPLEX))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_complex.so',recfm=u -o '//PJOOT.SAMPLE.COMPLEX(COMPLEX),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_complex.pds'





include make.rules
