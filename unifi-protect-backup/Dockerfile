ARG ARCH=amd64
FROM ghcr.io/home-assistant/${ARCH}-base:3.18

RUN apk add --no-cache --virtual .buildDeps \
    py3-pip \
    rclone \
    git \
    && pip3 install git+https://github.com/r2munz/unifi-protect-backup.git@972059bfc3614f10da926010bf24214d7b9afcc8

COPY rootfs /
