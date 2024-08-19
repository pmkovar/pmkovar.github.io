#!/bin/sh
set -xe

mkdir -p ./output

CURRENT_PATH=`pwd`

asciidoctor -D ${CURRENT_PATH}/output/ -o pmkovar.html cv/pmkovar.adoc

asciidoctor-pdf --theme themes/cv.yml -D ${CURRENT_PATH}/output/ -o pmkovar.pdf  cv/pmkovar.adoc

cp README.md ${CURRENT_PATH}/output/
