TEX = pdflatex
BIB = bibtex 

PAPER = main 
BIBFILE= draft.bib 

all:clean $(PAPER).pdf $(PAPER).pdf

clean::
	rm -fv *.dvi *.aux *.log *.bbl *.blg $(PAPER).pdf
 
$(PAPER).pdf:
	$(TEX) $(PAPER)
	$(BIB) $(PAPER)
	$(TEX) $(PAPER)
	$(TEX) $(PAPER)


