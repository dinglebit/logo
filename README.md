# logo

Dinglebit logos.

# generating logos

Generating the logos requires the linux command convert (ImageMagick)
and the nodejs module svgexport. You can get the latter with:

	npm update

Once done, simply run the command:

	make
	
This will generate the files in the dist folder.

# usage

You can use the svg/png wherever you'd like. To use the favicons for
HTML apps, you want to copy the _images_ folder for the palette you
are interested in to your projects _images_ folder. You should then
insert the contents of _favicons.html_ into the head of your HTML
files. It makes references to _browserconfig.xml_ and _manifest.json_
for certain browsers, so you could copy them to the root of your
project folder as well.

# license

Copyright (C) 2016 Dinglebit Developers

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
