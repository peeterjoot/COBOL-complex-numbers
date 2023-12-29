# DO NOT EDIT.  GENERATED WITH lz_mkmake version 0.7.15: '/usr/bin/lz_mkmake --scope --no-bind --source x.in --cobload PJOOT.SAMPLE2.COMPLEX --cobsuff cob --outdir out'


OUTDIR := out

DOSCOPE := 1
NOBIND := 1

ASMSUFF := asm
COBSUFF := cob
PLISUFF := pli

include make.vars


OBJECTS_cdisplay += out/src/CDISPLAY.o
OBJECTS += $(OBJECTS_cdisplay)
ENTRIES += cdisplay
SHAREDS += out/src/liblz_pgm_cdisplay.so

OBJECTS_main += out/src/MAIN.o
OBJECTS += $(OBJECTS_main)
ENTRIES += main
SHAREDS += out/src/liblz_pgm_main.so
ALLOCTARGETS += out/PJOOT.SAMPLE2.COMPLEX.allocate.ts

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


out/src/liblz_pgm_cdisplay.so : $(OBJECTS_cdisplay)
	$(call SAYWHAT,out/src/liblz_pgm_cdisplay.so)
	$(Q)rm -f 'out/src/liblz_pgm_cdisplay.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_cdisplay.so' $(patsubst %,'%',$(OBJECTS_cdisplay)) $(LDFLAGS) $(LDFLAGS_cdisplay)

out/src/liblz_pgm_main.so : $(OBJECTS_main)
	$(call SAYWHAT,out/src/liblz_pgm_main.so)
	$(Q)rm -f 'out/src/liblz_pgm_main.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_main.so' $(patsubst %,'%',$(OBJECTS_main)) $(LDFLAGS) $(LDFLAGS_main)

.PHONY: allocate
allocate : $(ALLOCTARGETS)

shareds :: allocate

out/PJOOT.SAMPLE2.COMPLEX.allocate.ts :
ifndef NODELETEPDS
	$(Q)-$(LZDELETE) 'PJOOT.SAMPLE2.COMPLEX' >/dev/null 2>&1
endif
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX)
	$(Q)mkdir -p $(CLITMPPATHDIR)
	$(Q)$(LZALLOCATE) 'dataset(PJOOT.SAMPLE2.COMPLEX) MOD CATALOG DIR(1) DSORG(PO) RECFM(U) BLKSIZE(8192) ' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/PJOOT.SAMPLE2.COMPLEX.allocate.ts'



clean ::
	-$(LZDELETE) 'PJOOT.SAMPLE2.COMPLEX'
	rm -f out/PJOOT.SAMPLE2.COMPLEX.allocate.ts

out/src/liblz_pgm_cdisplay.pds : out/PJOOT.SAMPLE2.COMPLEX.allocate.ts out/src/liblz_pgm_cdisplay.so
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX(CDISPLAY))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_cdisplay.so',recfm=u -o '//PJOOT.SAMPLE2.COMPLEX(CDISPLAY),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_cdisplay.pds'



out/src/liblz_pgm_main.pds : out/PJOOT.SAMPLE2.COMPLEX.allocate.ts out/src/liblz_pgm_main.so
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX(MAIN))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_main.so',recfm=u -o '//PJOOT.SAMPLE2.COMPLEX(MAIN),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_main.pds'





include make.rules
