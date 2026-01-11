.DEFAULT_GOAL := all
all: bachelor.pdf master.pdf

%.pdf: %.tex prepare
	latexmk -xelatex $(basename $@)

nuaathesis.cls: ../nuaathesis.cls
	cp ../nuaathesis.cls .

bachelorbib.bst: ../bachelorbib.bst
	cp ../bachelorbib.bst .
	
masterbib.bst: ../masterbib.bst
	cp ../masterbib.bst .

prepare: nuaathesis.cls bachelorbib.bst masterbib.bst
