FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York

RUN apt-get update
RUN apt-get install -y lighttpd python3 wget

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

# if we want we can test that hello.py works
# CMD "/var/www/localhost/cgi-bin/hello.py"

# cp jsrc/jversion-x.h jsrc/jversion.h
# apk add git bash make clang musl-dev
# cc=clang ./build_all.sh
#
