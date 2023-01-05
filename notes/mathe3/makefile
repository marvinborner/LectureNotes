VIEW = zathura

all:
	@mkdir -p build/
	@pandoc main.md --filter pandoc-latex-environment --toc -N -V fontsize=11pt -V geometry:a4paper -V geometry:margin=2.5cm -o $(CURDIR)/build/main.tex --pdf-engine-opt=-shell-escape -H header.tex -B title.tex >/dev/null
	@(pdflatex -shell-escape -halt-on-error -output-directory $(CURDIR)/build/ $(CURDIR)/build/main.tex | grep '^!.*' -A200 --color=always ||true) &
	@progress 5 pdflatex
	@cp build/main.pdf . &>/dev/null
	@echo done.

part:
	@mkdir -p build/
	@pandoc part.md --filter pandoc-latex-environment -N -V fontsize=11pt -V geometry:a4paper -V geometry:margin=2.5cm -o $(CURDIR)/build/main.tex --pdf-engine-opt=-shell-escape -H header.tex >/dev/null
	@(pdflatex -shell-escape -halt-on-error -output-directory $(CURDIR)/build/ $(CURDIR)/build/main.tex | grep '^!.*' -A200 --color=always ||true) &
	@progress 1 pdflatex
	@echo done.

clean:
	@$(RM) -rf build

run: all
	@clear
	@$(VIEW) build/main.pdf
