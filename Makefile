.PHONY: all build rebuild clean

# Name of the main .tex file (without extension)
MAIN = main

# Compiler
LATEX = lualatex

# Flags for the compiler
LATEX_FLAGS = --interaction=nonstopmode --shell-escape

# Default target
all: build

# Build the .pdf file
build: $(MAIN).pdf

# Rebuild the .pdf file
rebuild: clean build

# Rule to compile the .tex file to .pdf
$(MAIN).pdf: $(MAIN).tex
	$(LATEX) $(LATEX_FLAGS) $<

# Clean up auxiliary files
clean:
	rm -f *.aux *.log *.out *.pdf