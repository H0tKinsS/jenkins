FROM alpine:latest

RUN ls -ll \
    && mkdir test
RUN whoami
