CHAPTERS=${shell ls chapter*.tex}

default: book.pdf

book.dvi: book.tex ${CHAPTERS}
	latex book.tex

book.pdf: book.dvi
	dvipdf book.dvi

clean:
	@rm *.aux *.dvi *.log *.toc *.pdf
