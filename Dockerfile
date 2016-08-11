FROM debian:jessie

MAINTAINER Javi Merino <merino.jav@gmail.com>

RUN apt-get update && apt-get install -y \
    anki

ENTRYPOINT ["/usr/bin/anki"]
