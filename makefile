FILE=main

$(FILE).pdf: *.tex *.bib
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)

clean:
	\rm *.aux *.blg *.out *.bbl *.log
