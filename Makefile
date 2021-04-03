all: chrome firefox

chrome: fetch
	scripts/build-target chrome

firefox: fetch
	scripts/build-target firefox

icons: fetch
	mkdir -p build
	inkscape packages/edit.svg --export-filename build/edit.png --export-width 128 --export-height 128

fetch:
	scripts/fetch

clean:
	rm -Rf build packages target

.PHONY: build
