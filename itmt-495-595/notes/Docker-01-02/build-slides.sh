#!/bin/bash

#pandoc -t slidy -s sample.md -o sample.html
# -i is for iterative (slides advance one bullet point at a time)
pandoc -i -t slidy -s docker-01-02.md -o docker-01-02.html 
pandoc -t beamer docker-01-02.md -o docker-01-02.pdf