#!/bin/sh

path="$HOME/studium"

rm -rf notes/

# mathe
for i in $(seq 3); do
	mkdir -p "notes/mathe$i/" && find "$path/SM$i/mathe$i/vorbereitung/" -maxdepth 1 -type f \( -name "main.md" -o -name "main.pdf" -o -name "exam.md" -o -name "exam.pdf" -o -name "*.tex" -o -name "makefile" \) -exec cp {} "notes/mathe$i/" \;
done

# theo1
mkdir -p "notes/theo1/" && find "$path/SM3/algo/vorbereitung/" -maxdepth 1 -type f \( -name "main.md" -o -name "main.pdf" -o -name "exam.md" -o -name "exam.pdf" -o -name "*.tex" -o -name "makefile" \) -exec cp {} "notes/theo1/" \;

# theo2
mkdir -p "notes/theo2/" && find "$path/SM4/theo2/vorbereitung/" -maxdepth 1 -type f \( -name "main.md" -o -name "main.pdf" -o -name "exam.md" -o -name "exam.pdf" -o -name "*.tex" -o -name "makefile" \) -exec cp {} "notes/theo2/" \;

git add .
git status
echo "Commit?"
