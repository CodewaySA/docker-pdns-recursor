FROM docker.io/codewaysa/alpine:3.18.3_20230912

LABEL com.powerdns.pdns-recursor.version="4.8.4"
LABEL image-name="codewaysa/pdns-recursor"
LABEL maintainer="l.lesinigo@codeway.ch"

RUN apk add --no-cache pdns-recursor=4.8.4-r1 && \
    mkdir -p /var/run/pdns-recursor

COPY recursor.conf /etc/pdns/recursor.conf

EXPOSE 53/tcp
EXPOSE 53/udp

CMD [ "/usr/sbin/pdns_recursor" ]
