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
    css="`fgrep -e default-primary-color -e accent-color palettes/$i/palette.css | 
          sed -e 's/.default-primary-color/.dinglebit-logo-pants/g' -e 's/.accent-color/.dinglebit-logo-dingleberry/g' -e 's/background/fill/g'`"
    node node_modules/svgexport/bin/index.js dinglebit.svg dist/$i/images/dinglebit.png "$css"
done

