FROM debian:unstable

RUN apt-get update && \
    apt-get full-upgrade -y && \
    apt-get install -y build-essential dh-make-golang dh-golang
