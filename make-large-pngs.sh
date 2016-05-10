#!/bin/bash

for i in $(ls palettes); do
    mkdir -p dist/$i/images
    css="`fgrep -e default-primary-color -e accent-color palettes/$i/palette.css | 
          sed -e 's/.default-primary-color/#pants/g' -e 's/.accent-color/#dingleberry/g' -e 's/background/fill/g'`"
    nodejs node_modules/svgexport/bin/index.js dinglebit.svg dist/$i/images/dinglebit.png "$css"
done

