ARG BUILD_FROM
FROM $BUILD_FROM

COPY run.sh /

CMD [ "/run.sh" ]
