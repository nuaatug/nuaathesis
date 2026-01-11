.DEFAULT_GOAL := all
all: bachelor.pdf master.pdf

%.pdf: %.tex prepare
	-latexmk -pdfdvi -f -interaction=nonstopmode $(basename $@)

nuaathesis.cls: ../nuaathesis.cls
	cp ../nuaathesis.cls .

bachelorbib.bst: ../bachelorbib.bst
	cp ../bachelorbib.bst .
	
masterbib.bst: ../masterbib.bst
	cp ../masterbib.bst .

prepare: nuaathesis.cls bachelorbib.bst masterbib.bst
