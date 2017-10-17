default: book.pdf


book.dvi: book.tex
	latex book.tex

book.pdf: book.dvi
	dvipdf book.dvi

clean:
	@rm *.aux *.dvi *.log *.toc *.pdf
