#!/bin/sh

path="$HOME/studium"

rm -rf notes/

# mathe
for i in $(seq 3); do
	mkdir -p "notes/mathe$i/" && find "$path/SM$i/mathe$i/vorbereitung/" -maxdepth 1 -type f \( -name "main.md" -o -name "main.pdf" -o -name "exam.md" -o -name "*.tex" -o -name "makefile" \) -exec cp {} "notes/mathe$i/" \;
done

# algo
mkdir -p "notes/algo/" && find "$path/SM3/algo/vorbereitung/" -maxdepth 1 -type f \( -name "main.md" -o -name "main.pdf" -o -name "*.tex" -o -name "makefile" \) -exec cp {} "notes/algo/" \;

git add .
git status
echo "Commit?"
