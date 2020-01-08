Asciidoc book toolchain
=======================

Run `./build-docker-images` first, to build docker image(s) containing the tools

Thereafter, run `./build` to build the book with the Makefile.  The Asciidoc source is in the `book` directory.  Generated output is written within the `out/` directory.

Any arguments to the `./build` command are passed to `make` in the Docker container.  E.g. `./build html` will build only the HTML output, and `./build pdf` will build only the PDF output.

To build automatically in the background as you save files, run `./build-continuously`.  This script also passes arguments through to `make`. E.g. `./build-continually html` will rebuild the HTML whenever you save changes to the source.
