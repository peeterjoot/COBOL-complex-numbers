# DO NOT EDIT.  GENERATED WITH lz_mkmake version 0.7.15: '/usr/bin/lz_mkmake --scope --no-bind --source x.in --cobload PJOOT.SAMPLE2.COMPLEX --cobsuff cob --outdir out --pdssz=30'


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

OBJECTS_cmconj += out/src/CMCONJ.o
OBJECTS += $(OBJECTS_cmconj)
ENTRIES += cmconj
SHAREDS += out/src/liblz_pgm_cmconj.so

OBJECTS_cradd += out/src/CRADD.o
OBJECTS += $(OBJECTS_cradd)
ENTRIES += cradd
SHAREDS += out/src/liblz_pgm_cradd.so

OBJECTS_crimag += out/src/CRIMAG.o
OBJECTS += $(OBJECTS_crimag)
ENTRIES += crimag
SHAREDS += out/src/liblz_pgm_crimag.so

OBJECTS_crinv += out/src/CRINV.o
OBJECTS += $(OBJECTS_crinv)
ENTRIES += crinv
SHAREDS += out/src/liblz_pgm_crinv.so

OBJECTS_crmult += out/src/CRMULT.o
OBJECTS += $(OBJECTS_crmult)
ENTRIES += crmult
SHAREDS += out/src/liblz_pgm_crmult.so

OBJECTS_crreal += out/src/CRREAL.o
OBJECTS += $(OBJECTS_crreal)
ENTRIES += crreal
SHAREDS += out/src/liblz_pgm_crreal.so

OBJECTS_crscale += out/src/CRSCALE.o
OBJECTS += $(OBJECTS_crscale)
ENTRIES += crscale
SHAREDS += out/src/liblz_pgm_crscale.so

OBJECTS_crsub += out/src/CRSUB.o
OBJECTS += $(OBJECTS_crsub)
ENTRIES += crsub
SHAREDS += out/src/liblz_pgm_crsub.so

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

out/src/liblz_pgm_cmconj.so : $(OBJECTS_cmconj)
	$(call SAYWHAT,out/src/liblz_pgm_cmconj.so)
	$(Q)rm -f 'out/src/liblz_pgm_cmconj.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_cmconj.so' $(patsubst %,'%',$(OBJECTS_cmconj)) $(LDFLAGS) $(LDFLAGS_cmconj)

out/src/liblz_pgm_cradd.so : $(OBJECTS_cradd)
	$(call SAYWHAT,out/src/liblz_pgm_cradd.so)
	$(Q)rm -f 'out/src/liblz_pgm_cradd.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_cradd.so' $(patsubst %,'%',$(OBJECTS_cradd)) $(LDFLAGS) $(LDFLAGS_cradd)

out/src/liblz_pgm_crimag.so : $(OBJECTS_crimag)
	$(call SAYWHAT,out/src/liblz_pgm_crimag.so)
	$(Q)rm -f 'out/src/liblz_pgm_crimag.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_crimag.so' $(patsubst %,'%',$(OBJECTS_crimag)) $(LDFLAGS) $(LDFLAGS_crimag)

out/src/liblz_pgm_crinv.so : $(OBJECTS_crinv)
	$(call SAYWHAT,out/src/liblz_pgm_crinv.so)
	$(Q)rm -f 'out/src/liblz_pgm_crinv.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_crinv.so' $(patsubst %,'%',$(OBJECTS_crinv)) $(LDFLAGS) $(LDFLAGS_crinv)

out/src/liblz_pgm_crmult.so : $(OBJECTS_crmult)
	$(call SAYWHAT,out/src/liblz_pgm_crmult.so)
	$(Q)rm -f 'out/src/liblz_pgm_crmult.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_crmult.so' $(patsubst %,'%',$(OBJECTS_crmult)) $(LDFLAGS) $(LDFLAGS_crmult)

out/src/liblz_pgm_crreal.so : $(OBJECTS_crreal)
	$(call SAYWHAT,out/src/liblz_pgm_crreal.so)
	$(Q)rm -f 'out/src/liblz_pgm_crreal.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_crreal.so' $(patsubst %,'%',$(OBJECTS_crreal)) $(LDFLAGS) $(LDFLAGS_crreal)

out/src/liblz_pgm_crscale.so : $(OBJECTS_crscale)
	$(call SAYWHAT,out/src/liblz_pgm_crscale.so)
	$(Q)rm -f 'out/src/liblz_pgm_crscale.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_crscale.so' $(patsubst %,'%',$(OBJECTS_crscale)) $(LDFLAGS) $(LDFLAGS_crscale)

out/src/liblz_pgm_crsub.so : $(OBJECTS_crsub)
	$(call SAYWHAT,out/src/liblz_pgm_crsub.so)
	$(Q)rm -f 'out/src/liblz_pgm_crsub.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_crsub.so' $(patsubst %,'%',$(OBJECTS_crsub)) $(LDFLAGS) $(LDFLAGS_crsub)

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
	$(Q)$(LZALLOCATE) 'dataset(PJOOT.SAMPLE2.COMPLEX) MOD CATALOG DIR(30) DSORG(PO) RECFM(U) BLKSIZE(8192) ' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/PJOOT.SAMPLE2.COMPLEX.allocate.ts'



clean ::
	-$(LZDELETE) 'PJOOT.SAMPLE2.COMPLEX'
	rm -f out/PJOOT.SAMPLE2.COMPLEX.allocate.ts

out/src/liblz_pgm_cdisplay.pds : out/PJOOT.SAMPLE2.COMPLEX.allocate.ts out/src/liblz_pgm_cdisplay.so
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX(CDISPLAY))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_cdisplay.so',recfm=u -o '//PJOOT.SAMPLE2.COMPLEX(CDISPLAY),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_cdisplay.pds'



out/src/liblz_pgm_cmconj.pds : out/PJOOT.SAMPLE2.COMPLEX.allocate.ts out/src/liblz_pgm_cmconj.so
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX(CMCONJ))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_cmconj.so',recfm=u -o '//PJOOT.SAMPLE2.COMPLEX(CMCONJ),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_cmconj.pds'



out/src/liblz_pgm_cradd.pds : out/PJOOT.SAMPLE2.COMPLEX.allocate.ts out/src/liblz_pgm_cradd.so
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX(CRADD))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_cradd.so',recfm=u -o '//PJOOT.SAMPLE2.COMPLEX(CRADD),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_cradd.pds'



out/src/liblz_pgm_crimag.pds : out/PJOOT.SAMPLE2.COMPLEX.allocate.ts out/src/liblz_pgm_crimag.so
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX(CRIMAG))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_crimag.so',recfm=u -o '//PJOOT.SAMPLE2.COMPLEX(CRIMAG),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_crimag.pds'



out/src/liblz_pgm_crinv.pds : out/PJOOT.SAMPLE2.COMPLEX.allocate.ts out/src/liblz_pgm_crinv.so
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX(CRINV))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_crinv.so',recfm=u -o '//PJOOT.SAMPLE2.COMPLEX(CRINV),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_crinv.pds'



out/src/liblz_pgm_crmult.pds : out/PJOOT.SAMPLE2.COMPLEX.allocate.ts out/src/liblz_pgm_crmult.so
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX(CRMULT))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_crmult.so',recfm=u -o '//PJOOT.SAMPLE2.COMPLEX(CRMULT),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_crmult.pds'



out/src/liblz_pgm_crreal.pds : out/PJOOT.SAMPLE2.COMPLEX.allocate.ts out/src/liblz_pgm_crreal.so
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX(CRREAL))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_crreal.so',recfm=u -o '//PJOOT.SAMPLE2.COMPLEX(CRREAL),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_crreal.pds'



out/src/liblz_pgm_crscale.pds : out/PJOOT.SAMPLE2.COMPLEX.allocate.ts out/src/liblz_pgm_crscale.so
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX(CRSCALE))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_crscale.so',recfm=u -o '//PJOOT.SAMPLE2.COMPLEX(CRSCALE),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_crscale.pds'



out/src/liblz_pgm_crsub.pds : out/PJOOT.SAMPLE2.COMPLEX.allocate.ts out/src/liblz_pgm_crsub.so
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX(CRSUB))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_crsub.so',recfm=u -o '//PJOOT.SAMPLE2.COMPLEX(CRSUB),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_crsub.pds'



out/src/liblz_pgm_main.pds : out/PJOOT.SAMPLE2.COMPLEX.allocate.ts out/src/liblz_pgm_main.so
	$(call SAYWHAT,PJOOT.SAMPLE2.COMPLEX(MAIN))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_main.so',recfm=u -o '//PJOOT.SAMPLE2.COMPLEX(MAIN),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_main.pds'





include make.rules
