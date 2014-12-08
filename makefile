BASENAME=example
RM=rm -rf

all: $(BASENAME).pdf

$(BASENAME).pdf: $(BASENAME).tex
	pdflatex $(BASENAME).tex

clean:
	$(RM) $(BASENAME).aux $(BASENAME).log

cleanall: clean
	$(RM) $(BASENAME).pdf

.PHONY: all clean cleanall
