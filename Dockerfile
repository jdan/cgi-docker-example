FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York

RUN apt-get update
RUN apt-get install -y lighttpd python3 wget

# J installation
# RUN mkdir /usr/share/applications
RUN mkdir -p /usr/share/icons/hicolor/scalable/apps

RUN wget http://www.jsoftware.com/download/j901/install/j901_amd64.deb
RUN dpkg -i j901_amd64.deb
RUN rm j901_amd64.deb

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

# if we want we can test that hello.py works
# CMD "/var/www/localhost/cgi-bin/hello.py"

# cp jsrc/jversion-x.h jsrc/jversion.h
# apk add git bash make clang musl-dev
# cc=clang ./build_all.sh
#
