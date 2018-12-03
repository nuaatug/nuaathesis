.DEFAULT_GOAL := all
all: bachelor.pdf master.pdf master-SZ.pdf

%.pdf: %.tex prepare
	latexmk -xelatex $(basename $@)

nuaathesis.cls: ../nuaathesis.cls
	cp ../nuaathesis.cls .

nuaathesis.bst: ../nuaathesis.bst
	cp ../nuaathesis.bst .

prepare: nuaathesis.cls nuaathesis.bst
