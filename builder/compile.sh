#!/usr/bin/env bash
set -e

cd /workspace/src

pdflatex -interaction=nonstopmode -halt-on-error resume.tex
pdflatex -interaction=nonstopmode -halt-on-error resume.tex

mv resume.pdf /workspace/CV.pdf

rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk