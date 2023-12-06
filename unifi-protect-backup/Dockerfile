ARG BUILD_FROM=ghcr.io/hassio-addons/debian-base/amd64:7.2.0
FROM $BUILD_FROM

RUN apk add --no-cache --virtual .buildDeps \
    pipx \
    && pipx install unifi-protect-backup \
    && pipx ensurepath

COPY rootfs /
