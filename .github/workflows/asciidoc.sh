#!/bin/sh
set -xe

mkdir -p ./output

CURRENT_PATH=`pwd`

asciidoctor -D ${CURRENT_PATH}/output/ -o index.html index.adoc

asciidoctor-pdf --theme cv/themes/cv.yml -D ${CURRENT_PATH}/output/ -o pmkovar.pdf  cv/pmkovar.adoc
