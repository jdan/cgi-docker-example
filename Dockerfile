FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York

RUN apt-get update
RUN apt-get install -y lighttpd python3 wget

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

# if we want we can test that hello.py works
# CMD "/var/www/localhost/cgi-bin/hello.py"
