FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York

# Install lighttpd, python, and wget
RUN apt-get update
RUN apt-get install -y lighttpd python3 wget

# J installation
RUN mkdir -p /usr/share/icons/hicolor/scalable/apps

RUN wget http://www.jsoftware.com/download/j901/install/j901_amd64.deb
RUN dpkg -i j901_amd64.deb
RUN rm j901_amd64.deb

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
