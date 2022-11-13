#!/bin/sh

#pandoc -N --variable "geometry=margin=1.2in" --variable mainfont="NotoSans-Regular" --variable fontsize=12pt --variable version=1.0 latex/finlatex.tex --pdf-engine=xelatex --toc --toc-depth=2 -o vivlio.pdf

pandoc -N --variable "geometry=margin=1.2in" --variable fontfamily=libertinus --variable fontsize=12pt --variable papersize=a4 --variable version=1.0 latex/finlatex.tex --pdf-engine=xelatex --toc --toc-depth=2 -o vivlio.pdf
