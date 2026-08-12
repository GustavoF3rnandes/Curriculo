# Versoes do curriculo. Para adicionar um idioma, crie cv-xx.tex e some aqui.
NAMES = cv cv-en
EXTS = aux bbl bcf fdb_latexmk fls log out run.xml blg toc

all:
	latexmk -pdf $(addsuffix .tex,$(NAMES))

clean:
	rm -f $(foreach n,$(NAMES),$(addprefix $(n).,$(EXTS))) *\~

distclean: clean
	rm -f $(addsuffix .pdf,$(NAMES))
