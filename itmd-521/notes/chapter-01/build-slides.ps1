#pandoc -t slidy -s sample.md -o sample.html
# -i is for iterative (slides advance one bullet point at a time)
pandoc -i -t slidy -s chapter-01.md -o chapter-01.html 
pandoc -t beamer chapter-01.md -o chapter-01.pdf