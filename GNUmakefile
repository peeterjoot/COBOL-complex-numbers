include make.common

all:
	make -C 0_paragraph
	make -C 1_subprograms
ifdef BRLANG
	make -C 2_udfs
endif

check: all
	make -C 1_subprograms/GA20.v0.1 check
ifdef BRLANG
	make -C 2_udfs/GA20.v0.2 check
endif
	# will fail with gcobol (see: BUGS/125615)
	make -C 0_paragraph/CMPXLBRY.v0.1 check

clean:
	make -C 0_paragraph clean
	make -C 1_subprograms clean
	make -C 2_udfs clean
