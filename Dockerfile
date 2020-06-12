FROM codewaysa/alpine:3.12.0_20200612

LABEL com.powerdns.pdns-recursor.version="4.3.1"
LABEL image_name="codewaysa/pdns-recursor"
LABEL maintainer="l.lesinigo@codeway.ch"

RUN apk add --no-cache pdns-recursor=4.3.1-r0

COPY recursor.conf /etc/pdns/recursor.conf

EXPOSE 53/tcp
EXPOSE 53/udp

CMD [ "/usr/sbin/pdns_recursor" ]
