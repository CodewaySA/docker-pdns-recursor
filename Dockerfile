FROM codewaysa/alpine:3.15.4_20220609

LABEL com.powerdns.pdns-recursor.version="4.5.8"
LABEL image-name="codewaysa/pdns-recursor"
LABEL maintainer="l.lesinigo@codeway.ch"

RUN apk add --no-cache pdns-recursor=4.5.8-r0 && \
    mkdir -p /var/run/pdns-recursor

COPY recursor.conf /etc/pdns/recursor.conf

EXPOSE 53/tcp
EXPOSE 53/udp

CMD [ "/usr/sbin/pdns_recursor" ]
