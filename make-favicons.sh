#!/bin/bash
#
# Copyright (C) 2016 Dinglebit Developers

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


for i in $(ls palettes); do
    mkdir -p dist/$i/images

    # Make the images.
    convert -resize x48 dist/$i/images/dinglebit.png dist/$i/favicon.ico
    convert -resize x144 dist/$i/images/dinglebit.png dist/$i/images/android-chrome-144x144.png
    convert -resize x192 dist/$i/images/dinglebit.png dist/$i/images/android-chrome-192x192.png
    convert -resize x36 dist/$i/images/dinglebit.png dist/$i/images/android-chrome-36x36.png
    convert -resize x48 dist/$i/images/dinglebit.png dist/$i/images/android-chrome-48x48.png
    convert -resize x72 dist/$i/images/dinglebit.png dist/$i/images/android-chrome-72x72.png
    convert -resize x96 dist/$i/images/dinglebit.png dist/$i/images/android-chrome-96x96.png
    convert -resize x114 dist/$i/images/dinglebit.png dist/$i/images/apple-touch-icon-114x114.png
    convert -resize x120 dist/$i/images/dinglebit.png dist/$i/images/apple-touch-icon-120x120.png
    convert -resize x144 dist/$i/images/dinglebit.png dist/$i/images/apple-touch-icon-144x144.png
    convert -resize x152 dist/$i/images/dinglebit.png dist/$i/images/apple-touch-icon-152x152.png
    convert -resize x180 dist/$i/images/dinglebit.png dist/$i/images/apple-touch-icon-180x180.png
    convert -resize x57 dist/$i/images/dinglebit.png dist/$i/images/apple-touch-icon-57x57.png
    convert -resize x60 dist/$i/images/dinglebit.png dist/$i/images/apple-touch-icon-60x60.png
    convert -resize x72 dist/$i/images/dinglebit.png dist/$i/images/apple-touch-icon-72x72.png
    convert -resize x76 dist/$i/images/dinglebit.png dist/$i/images/apple-touch-icon-76x76.png
    convert -resize x180 dist/$i/images/dinglebit.png dist/$i/images/apple-touch-icon-precomposed.png
    convert -resize x180 dist/$i/images/dinglebit.png dist/$i/images/apple-touch-icon.png
    convert -resize x16 dist/$i/images/dinglebit.png dist/$i/images/favicon-16x16.png
    convert -resize x194 dist/$i/images/dinglebit.png dist/$i/images/favicon-194x194.png
    convert -resize x32 dist/$i/images/dinglebit.png dist/$i/images/favicon-32x32.png
    convert -resize x96 dist/$i/images/dinglebit.png dist/$i/images/favicon-96x96.png
    convert -resize x144 dist/$i/images/dinglebit.png dist/$i/images/mstile-144x144.png
    convert -resize x150 dist/$i/images/dinglebit.png dist/$i/images/mstile-150x150.png
    convert -resize 310x150 dist/$i/images/dinglebit.png dist/$i/images/mstile-310x150.png
    convert -resize x310 dist/$i/images/dinglebit.png dist/$i/images/mstile-310x310.png
    convert -resize x70 dist/$i/images/dinglebit.png dist/$i/images/mstile-70x70.png
    cp dinglebit.svg dist/$i/images/safari-pinned-tab.svg

    # Make the related files
    cp manifest.json dist/$i
    sed -f palettes/$i/colors.sed browserconfig.tmpl.xml >dist/$i/browserconfig.xml
    sed -f palettes/$i/colors.sed favicons.tmpl.html >dist/$i/favicons.html
done

