# logo

Dinglebit logos.

# Generating logos

Generating the logos requires the linux command convert (ImageMagick)
and the nodejs module svgexport. You can get the latter with:

	npm update

Once done, simply run the command:

	make
	
This will generate the files in the dist folder.

# Usage

You can use the svg/png wherever you'd like. To use the favicons for
HTML apps, you want to copy the _images_ folder for the palette you
are interested in to your projects _images_ folder. You should then
insert the contents of _favicons.html_ into the head of your HTML
files. It makes references to _browserconfig.xml_ and _manifest.json_
for certain browsers, so you could copy them to the root of your
project folder as well.
