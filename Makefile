# Nome del file principale
MAIN = thesis.tex

.PHONY: all pdf clean

# Il target di default quando digiti solo 'make'
all: pdf

# Target per compilare il PDF usando il demone Docker
pdf:
	./latexdockerdaemoncmd.sh latexmk -cd -f -interaction=batchmode -pdf $(MAIN)

# Target per pulire i file temporanei generati da LaTeX
clean:
	./latexdockerdaemoncmd.sh latexmk -c $(MAIN)