FROM debian:unstable

RUN apt-get update && \
    apt-get full-upgrade -y && \
    apt-get install -y dh-make-golang
