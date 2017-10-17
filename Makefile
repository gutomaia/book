default: book.pdf


book.dvi: book.tex
	latex book.tex

book.pdf: book.dvi
	dvipdf book.dvi

clean:
	@rm *.aux
	@rm *.dvi
	@rm *.log
	@rm *.toc
	@rm *.pdf
