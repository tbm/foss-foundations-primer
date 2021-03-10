
all: pdf

chapters := $(wildcard chapters/*/*.tex)
foss-foundations-primer.pdf: foss-foundations-primer.tex $(chapters)
	pdflatex $<
	pdflatex $<
	pdflatex $<

pdf: foss-foundations-primer.pdf

spell:
	devel/spell-check
	pyspelling

clean:
	rm -f foss-foundations-primer.aux foss-foundations-primer.log foss-foundations-primer.mw foss-foundations-primer.pdf
	rm -f dictionary.dic

.PHONY: all clean pdf spell
