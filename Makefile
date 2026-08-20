# KNOWNTARGETS will not be passed along to CoqMakefile
KNOWNTARGETS := Makefile.rocq
# KNOWNFILES will not get implicit targets from the final rule, and so
# depending on them won't invoke the submake
# Warning: These files get declared as PHONY, so any targets depending
# on them always get rebuilt
KNOWNFILES   := Makefile _CoqProject

.DEFAULT_GOAL := invoke-rocqmakefile

Makefile.rocq: Makefile _CoqProject
	$(ROCQBIN)rocq makefile -f _CoqProject -o Makefile.rocq

invoke-rocqmakefile: Makefile.rocq
	$(MAKE) --no-print-directory -f Makefile.rocq $(filter-out $(KNOWNTARGETS),$(MAKECMDGOALS))

.PHONY: invoke-rocqmakefile $(KNOWNFILES)

####################################################################
##                      Your targets here                         ##
####################################################################

# This should be the last rule, to handle any targets not declared above
%: invoke-rocqmakefile
	@true
