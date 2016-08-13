FROM debian:jessie

MAINTAINER Javi Merino <merino.jav@gmail.com>

# Reasons for each package:
#   - anki
#   - locales: anki needs a UTF-8 locale
#   - mplayer: to play sounds
RUN apt-get update && apt-get install -y \
    anki \
    locales \
    mplayer

# anki needs a UTF-8 locale
RUN echo en_GB.UTF-8 UTF-8 >> /etc/locale.gen
RUN locale-gen
ENV LANG en_GB.UTF-8
ENV LC_ALL en_GB.UTF-8

ENTRYPOINT ["/usr/bin/anki"]
