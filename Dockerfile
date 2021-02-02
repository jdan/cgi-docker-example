FROM sebp/lighttpd:latest
RUN apk add python3

# if we want we can test that hello.py works
# CMD "/var/www/localhost/cgi-bin/hello.py"
