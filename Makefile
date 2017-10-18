CHAPTERS=${shell ls chapter*.tex}

default: book.pdf

book.pdf: ${CHAPTERS}
	pdflatex -shell-escape book.tex

run: book.pdf
	evince book.pdf

clean:
	@rm *.aux *.dvi *.log *.toc *.pdf
