# DO NOT EDIT.  GENERATED WITH lz_mkmake version 0.7.15: '/usr/bin/lz_mkmake --scope --no-bind --source x.in --cobload PJOOT.GA20V01.LOADLIB --cobsuff cob --outdir out --pdssz=30'


OUTDIR := out

DOSCOPE := 1
NOBIND := 1

ASMSUFF := asm
COBSUFF := cob
PLISUFF := pli

include make.vars


OBJECTS_gadisp += out/src/GADISP.o
OBJECTS += $(OBJECTS_gadisp)
ENTRIES += gadisp
SHAREDS += out/src/liblz_pgm_gadisp.so

OBJECTS_gampseu += out/src/GAMPSEU.o
OBJECTS += $(OBJECTS_gampseu)
ENTRIES += gampseu
SHAREDS += out/src/liblz_pgm_gampseu.so

OBJECTS_gamscal += out/src/GAMSCAL.o
OBJECTS += $(OBJECTS_gamscal)
ENTRIES += gamscal
SHAREDS += out/src/liblz_pgm_gamscal.so

OBJECTS_gamvec += out/src/GAMVEC.o
OBJECTS += $(OBJECTS_gamvec)
ENTRIES += gamvec
SHAREDS += out/src/liblz_pgm_gamvec.so

OBJECTS_garmult += out/src/GARMULT.o
OBJECTS += $(OBJECTS_garmult)
ENTRIES += garmult
SHAREDS += out/src/liblz_pgm_garmult.so

OBJECTS_mult += out/src/MULT.o
OBJECTS += $(OBJECTS_mult)
ENTRIES += mult
SHAREDS += out/src/liblz_pgm_mult.so
ALLOCTARGETS += out/PJOOT.GA20V01.LOADLIB.allocate.ts

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


out/src/liblz_pgm_gadisp.so : $(OBJECTS_gadisp)
	$(call SAYWHAT,out/src/liblz_pgm_gadisp.so)
	$(Q)rm -f 'out/src/liblz_pgm_gadisp.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_gadisp.so' $(patsubst %,'%',$(OBJECTS_gadisp)) $(LDFLAGS) $(LDFLAGS_gadisp)

out/src/liblz_pgm_gampseu.so : $(OBJECTS_gampseu)
	$(call SAYWHAT,out/src/liblz_pgm_gampseu.so)
	$(Q)rm -f 'out/src/liblz_pgm_gampseu.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_gampseu.so' $(patsubst %,'%',$(OBJECTS_gampseu)) $(LDFLAGS) $(LDFLAGS_gampseu)

out/src/liblz_pgm_gamscal.so : $(OBJECTS_gamscal)
	$(call SAYWHAT,out/src/liblz_pgm_gamscal.so)
	$(Q)rm -f 'out/src/liblz_pgm_gamscal.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_gamscal.so' $(patsubst %,'%',$(OBJECTS_gamscal)) $(LDFLAGS) $(LDFLAGS_gamscal)

out/src/liblz_pgm_gamvec.so : $(OBJECTS_gamvec)
	$(call SAYWHAT,out/src/liblz_pgm_gamvec.so)
	$(Q)rm -f 'out/src/liblz_pgm_gamvec.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_gamvec.so' $(patsubst %,'%',$(OBJECTS_gamvec)) $(LDFLAGS) $(LDFLAGS_gamvec)

out/src/liblz_pgm_garmult.so : $(OBJECTS_garmult)
	$(call SAYWHAT,out/src/liblz_pgm_garmult.so)
	$(Q)rm -f 'out/src/liblz_pgm_garmult.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_garmult.so' $(patsubst %,'%',$(OBJECTS_garmult)) $(LDFLAGS) $(LDFLAGS_garmult)

out/src/liblz_pgm_mult.so : $(OBJECTS_mult)
	$(call SAYWHAT,out/src/liblz_pgm_mult.so)
	$(Q)rm -f 'out/src/liblz_pgm_mult.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_mult.so' $(patsubst %,'%',$(OBJECTS_mult)) $(LDFLAGS) $(LDFLAGS_mult)

.PHONY: allocate
allocate : $(ALLOCTARGETS)

shareds :: allocate

out/PJOOT.GA20V01.LOADLIB.allocate.ts :
ifndef NODELETEPDS
	$(Q)-$(LZDELETE) 'PJOOT.GA20V01.LOADLIB' >/dev/null 2>&1
endif
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB)
	$(Q)mkdir -p $(CLITMPPATHDIR)
	$(Q)$(LZALLOCATE) 'dataset(PJOOT.GA20V01.LOADLIB) MOD CATALOG DIR(30) DSORG(PO) RECFM(U) BLKSIZE(8192) ' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/PJOOT.GA20V01.LOADLIB.allocate.ts'



clean ::
	-$(LZDELETE) 'PJOOT.GA20V01.LOADLIB'
	rm -f out/PJOOT.GA20V01.LOADLIB.allocate.ts

out/src/liblz_pgm_gadisp.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_gadisp.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GADISP))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_gadisp.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GADISP),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_gadisp.pds'



out/src/liblz_pgm_gampseu.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_gampseu.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GAMPSEU))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_gampseu.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GAMPSEU),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_gampseu.pds'



out/src/liblz_pgm_gamscal.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_gamscal.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GAMSCAL))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_gamscal.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GAMSCAL),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_gamscal.pds'



out/src/liblz_pgm_gamvec.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_gamvec.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GAMVEC))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_gamvec.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GAMVEC),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_gamvec.pds'



out/src/liblz_pgm_garmult.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_garmult.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GARMULT))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_garmult.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GARMULT),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_garmult.pds'



out/src/liblz_pgm_mult.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_mult.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(MULT))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_mult.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(MULT),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_mult.pds'





include make.rules
