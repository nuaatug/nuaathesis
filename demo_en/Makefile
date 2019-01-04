.DEFAULT_GOAL := all
all: bachelor.pdf master.pdf

%.pdf: %.tex prepare
	latexmk -xelatex $(basename $@)

prepare:
	cp -fuR ../logo ../nuaabib.bst ../nuaathesis.cls .
