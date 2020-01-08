FROM ubuntu:19.10

RUN apt-get update && apt-get install -y \
  asciidoctor \
  build-essential \
  graphviz \
  fswatch \
  plantuml \
  ruby

RUN gem install \
    asciidoctor-diagram \
    asciidoctor-rouge && \
    gem install asciidoctor-pdf --pre

CMD mkdir -p /build
