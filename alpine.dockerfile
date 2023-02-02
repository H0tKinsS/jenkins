FROM alpine:latest

RUN apk get update \
    && ls -ll \
    && mkdir test

