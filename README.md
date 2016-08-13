A simple docker container to run anki.  Anki is currently impossible
to run in Debian sid because it depends on Qt4 Webkit but Debian has
removed it, see
[#826727](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=826727)
and
[#784612](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=784612).
To be used while anki is ported to Qt5.

Build the container
===================

    docker build -t anki .

Run the container
=================

Use `run_anki`.  You may need to adjust the path to your Documents in
your computer
