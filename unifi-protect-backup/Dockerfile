ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:3.18
FROM $BUILD_FROM

RUN apk add --no-cache --virtual .buildDeps \
    py3-pip \
    rclone \
    && pip3 install unifi-protect-backup

COPY rootfs /
