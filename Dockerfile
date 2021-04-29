FROM codewaysa/alpine:3.13.5_20210428

LABEL com.powerdns.pdns-recursor.version="4.4.2"
LABEL image-name="codewaysa/pdns-recursor"
LABEL maintainer="l.lesinigo@codeway.ch"

RUN apk add --no-cache pdns-recursor=4.4.2-r1

COPY recursor.conf /etc/pdns/recursor.conf

EXPOSE 53/tcp
EXPOSE 53/udp

CMD [ "/usr/sbin/pdns_recursor" ]
