FROM codewaysa/alpine:3.17.2_20230227

LABEL com.powerdns.pdns-recursor.version="4.7.3"
LABEL image-name="codewaysa/pdns-recursor"
LABEL maintainer="l.lesinigo@codeway.ch"

RUN apk add --no-cache pdns-recursor=4.7.3-r0 && \
    mkdir -p /var/run/pdns-recursor

COPY recursor.conf /etc/pdns/recursor.conf

EXPOSE 53/tcp
EXPOSE 53/udp

CMD [ "/usr/sbin/pdns_recursor" ]
