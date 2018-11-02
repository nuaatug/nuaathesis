.DEFAULT_GOAL := all
all: bachelor.pdf master.pdf

%.pdf: %.tex prepare
	latexmk -pdfdvi $(basename $@)

nuaathesis.cls: ../nuaathesis.cls
	cp ../nuaathesis.cls .

nuaathesis.bst: ../nuaathesis.bst
	cp ../nuaathesis.bst .

prepare: nuaathesis.cls nuaathesis.bst
