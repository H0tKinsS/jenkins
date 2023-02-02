FROM alpine:latest

RUN apt-get update \
    && apt-get install -y --no-install-recommends mysql-client \
    && ls -ll \
    && mkdir test

