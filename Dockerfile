FROM sebp/lighttpd:latest
RUN apk add python3

# if we want we can test that hello.py works
# CMD "/var/www/localhost/cgi-bin/hello.py"

# cp jsrc/jversion-x.h jsrc/jversion.h
# apk add git bash make clang musl-dev
# cc=clang ./build_all.sh
#
