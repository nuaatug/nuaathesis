.DEFAULT_GOAL := all
.PHONY: demo

DTX_NAME := nuaathesis
SUBDIRS := $(wildcard demo*/.)

all: template demo

template: $(DTX_NAME).dtx
	xelatex $(DTX_NAME).dtx
	makeindex -s gind.ist -o $(DTX_NAME).ind $(DTX_NAME).idx
	makeindex -s gglo.ist -o $(DTX_NAME).gls $(DTX_NAME).glo
	xelatex $(DTX_NAME).dtx
	xelatex $(DTX_NAME).dtx
	xelatex $(DTX_NAME).dtx

demo: $(SUBDIRS)

$(SUBDIRS): template
	$(MAKE) -C $@
