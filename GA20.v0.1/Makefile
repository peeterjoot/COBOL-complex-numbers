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

OBJECTS_gammv += out/src/GAMMV.o
OBJECTS += $(OBJECTS_gammv)
ENTRIES += gammv
SHAREDS += out/src/liblz_pgm_gammv.so

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

OBJECTS_garadd += out/src/GARADD.o
OBJECTS += $(OBJECTS_garadd)
ENTRIES += garadd
SHAREDS += out/src/liblz_pgm_garadd.so

OBJECTS_garanti += out/src/GARANTI.o
OBJECTS += $(OBJECTS_garanti)
ENTRIES += garanti
SHAREDS += out/src/liblz_pgm_garanti.so

OBJECTS_gargrsel += out/src/GARGRSEL.o
OBJECTS += $(OBJECTS_gargrsel)
ENTRIES += gargrsel
SHAREDS += out/src/liblz_pgm_gargrsel.so

OBJECTS_garmult += out/src/GARMULT.o
OBJECTS += $(OBJECTS_garmult)
ENTRIES += garmult
SHAREDS += out/src/liblz_pgm_garmult.so

OBJECTS_garscale += out/src/GARSCALE.o
OBJECTS += $(OBJECTS_garscale)
ENTRIES += garscale
SHAREDS += out/src/liblz_pgm_garscale.so

OBJECTS_garsub += out/src/GARSUB.o
OBJECTS += $(OBJECTS_garsub)
ENTRIES += garsub
SHAREDS += out/src/liblz_pgm_garsub.so

OBJECTS_garsym += out/src/GARSYM.o
OBJECTS += $(OBJECTS_garsym)
ENTRIES += garsym
SHAREDS += out/src/liblz_pgm_garsym.so

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

out/src/liblz_pgm_gammv.so : $(OBJECTS_gammv)
	$(call SAYWHAT,out/src/liblz_pgm_gammv.so)
	$(Q)rm -f 'out/src/liblz_pgm_gammv.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_gammv.so' $(patsubst %,'%',$(OBJECTS_gammv)) $(LDFLAGS) $(LDFLAGS_gammv)

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

out/src/liblz_pgm_garadd.so : $(OBJECTS_garadd)
	$(call SAYWHAT,out/src/liblz_pgm_garadd.so)
	$(Q)rm -f 'out/src/liblz_pgm_garadd.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_garadd.so' $(patsubst %,'%',$(OBJECTS_garadd)) $(LDFLAGS) $(LDFLAGS_garadd)

out/src/liblz_pgm_garanti.so : $(OBJECTS_garanti)
	$(call SAYWHAT,out/src/liblz_pgm_garanti.so)
	$(Q)rm -f 'out/src/liblz_pgm_garanti.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_garanti.so' $(patsubst %,'%',$(OBJECTS_garanti)) $(LDFLAGS) $(LDFLAGS_garanti)

out/src/liblz_pgm_gargrsel.so : $(OBJECTS_gargrsel)
	$(call SAYWHAT,out/src/liblz_pgm_gargrsel.so)
	$(Q)rm -f 'out/src/liblz_pgm_gargrsel.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_gargrsel.so' $(patsubst %,'%',$(OBJECTS_gargrsel)) $(LDFLAGS) $(LDFLAGS_gargrsel)

out/src/liblz_pgm_garmult.so : $(OBJECTS_garmult)
	$(call SAYWHAT,out/src/liblz_pgm_garmult.so)
	$(Q)rm -f 'out/src/liblz_pgm_garmult.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_garmult.so' $(patsubst %,'%',$(OBJECTS_garmult)) $(LDFLAGS) $(LDFLAGS_garmult)

out/src/liblz_pgm_garscale.so : $(OBJECTS_garscale)
	$(call SAYWHAT,out/src/liblz_pgm_garscale.so)
	$(Q)rm -f 'out/src/liblz_pgm_garscale.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_garscale.so' $(patsubst %,'%',$(OBJECTS_garscale)) $(LDFLAGS) $(LDFLAGS_garscale)

out/src/liblz_pgm_garsub.so : $(OBJECTS_garsub)
	$(call SAYWHAT,out/src/liblz_pgm_garsub.so)
	$(Q)rm -f 'out/src/liblz_pgm_garsub.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_garsub.so' $(patsubst %,'%',$(OBJECTS_garsub)) $(LDFLAGS) $(LDFLAGS_garsub)

out/src/liblz_pgm_garsym.so : $(OBJECTS_garsym)
	$(call SAYWHAT,out/src/liblz_pgm_garsym.so)
	$(Q)rm -f 'out/src/liblz_pgm_garsym.so'
	$(Q)$(COBRC) :Output='out/src/liblz_pgm_garsym.so' $(patsubst %,'%',$(OBJECTS_garsym)) $(LDFLAGS) $(LDFLAGS_garsym)

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



out/src/liblz_pgm_gammv.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_gammv.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GAMMV))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_gammv.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GAMMV),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_gammv.pds'



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



out/src/liblz_pgm_garadd.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_garadd.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GARADD))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_garadd.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GARADD),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_garadd.pds'



out/src/liblz_pgm_garanti.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_garanti.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GARANTI))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_garanti.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GARANTI),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_garanti.pds'



out/src/liblz_pgm_gargrsel.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_gargrsel.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GARGRSEL))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_gargrsel.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GARGRSEL),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_gargrsel.pds'



out/src/liblz_pgm_garmult.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_garmult.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GARMULT))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_garmult.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GARMULT),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_garmult.pds'



out/src/liblz_pgm_garscale.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_garscale.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GARSCALE))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_garscale.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GARSCALE),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_garscale.pds'



out/src/liblz_pgm_garsub.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_garsub.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GARSUB))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_garsub.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GARSUB),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_garsub.pds'



out/src/liblz_pgm_garsym.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_garsym.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(GARSYM))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_garsym.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(GARSYM),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_garsym.pds'



out/src/liblz_pgm_mult.pds : out/PJOOT.GA20V01.LOADLIB.allocate.ts out/src/liblz_pgm_mult.so
	$(call SAYWHAT,PJOOT.GA20V01.LOADLIB(MULT))
	$(Q)$(LZCOPYMOD) --enqwait -+REPLACE,RMODE=ANY,AMODE=31 -S $(FSRELCWD)out/src/'liblz_pgm_mult.so',recfm=u -o '//PJOOT.GA20V01.LOADLIB(MULT),disp=mod' $(CLIREDIRECT)
	$(Q)mv $(CLITMPPATH) 'out/src/liblz_pgm_mult.pds'





include make.rules
