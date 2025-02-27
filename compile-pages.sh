#!/bin/bash

# Build all volumes
# for vol in {1..6}; do
for vol in {1..1}; do
    cd translations/volume-$vol
    # Build cover
    pdflatex cover.tex

    # Build individual pages
    for page in pages/*.tex; do
        pdflatex $page
    done

    # Build final volume
    pdflatex EMWv$vol.tex
done
