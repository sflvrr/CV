#!/usr/bin/env bash
set -e

cd /workspace/src

pdflatex -interaction=batchmode -halt-on-error resume.tex
pdflatex -interaction=batchmode -halt-on-error resume.tex

mv resume.pdf /workspace/Semyon_Khodus_CV.pdf

rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk