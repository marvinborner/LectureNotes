VIEW = zathura

all:
	@mkdir -p build/
	@pandoc main.md --toc -N -V fontsize=11pt -V geometry:a4paper -V geometry:margin=2.5cm -o build/main.pdf --pdf-engine-opt=-shell-escape
	@cp build/main.pdf .

clean:
	@$(RM) -rf build

run: clean all
	@$(VIEW) build/main.pdf
