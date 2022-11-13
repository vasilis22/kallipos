#!/bin/bash

pandoc latex/pre.tex latex/intro.tex -o latex/tempintro.tex

pandoc latex/ch0* -o latex/tempchp.tex

pandoc latex/apx* -o latex/tempapx.tex

pandoc latex/epi.tex latex/tempapx.tex -o latex/tempend.tex

pandoc -s latex/tempintro.tex latex/tempchp.tex latex/tempend.tex -o latex/finlatex.tex

rm latex/temp*
