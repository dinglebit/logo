all: dist large favicons

dist:
	rm -rf dist
	mkdir dist

large:
	./make-large-pngs.sh

favicons: large
	./make-favicons.sh


.PHONY: all
