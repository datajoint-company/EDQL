FILE=main

$(FILE).pdf: *.tex *.bib
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)
	open $(FILE).pdf

clean:
	\rm *.aux *.blg *.out *.bbl *.log
