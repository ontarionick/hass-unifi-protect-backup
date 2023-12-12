ARG ARCH=amd64
FROM ghcr.io/home-assistant/${ARCH}-base:3.18

RUN apk add --no-cache --virtual .buildDeps \
    py3-pip \
    rclone \
    && pip3 install unifi-protect-backup

COPY rootfs /
