.DEFAULT_GOAL := all
all: bachelor.pdf master.pdf master-SZ.pdf

%.pdf: %.tex prepare
	latexmk -xelatex $(basename $@)

nuaathesis.cls: ../nuaathesis.cls
	cp ../nuaathesis.cls .

nuaabib.bst: ../nuaabib.bst
	cp ../nuaabib.bst .

prepare: nuaathesis.cls nuaabib.bst
