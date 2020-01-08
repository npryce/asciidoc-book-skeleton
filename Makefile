
src:=$(wildcard book/*.asciidoc)
srcroot = book/book.asciidoc

asciidoctor_opts=--doctype=book --source-dir=book --destination-dir=$(dir $@) \
	--require=asciidoctor-pdf \
	--require=asciidoctor-diagram \
	--require=asciidoctor-rouge

all: out/html/book.html out/pdf/book.pdf
html: out/html/book.html
pdf: out/pdf/book.pdf

out/html/book.html: $(src) | out/html/
	asciidoctor $(asciidoctor_opts) --backend=html $(srcroot)

out/pdf/book.pdf: $(src) | out/pdf/
	asciidoctor $(asciidoctor_opts) --backend=pdf $(srcroot)

%/:
	mkdir -p $@

clean:
	rm -rf out/

.PHONY: all html pdf continually clean
