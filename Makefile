
.PHONY: main
main: main.pdf

%.pdf: %.md
	pandoc -o $@ --pdf-engine=lualatex --template=default.latex $<

%.pdf: %.tex
	latexmk -pdf -pvc -lualatex $<

clean:
	find . -not -name DODb1.pdf -name \*.pdf -delete

