#!/usr/bin/env bash
set -e

cd /workspace/src

pdflatex -interaction=nonstopmode -halt-on-error CV.tex
pdflatex -interaction=nonstopmode -halt-on-error CV.tex

mv resume.pdf /workspace/CV.pdf

rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk