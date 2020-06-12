# Docker PowerDNS Recursor

The PowerDNS Recursor is a high-performance DNS recursor with built-in scripting capabilities.   
It is known to power the resolving needs of over 150 million internet connections.

## Installation

Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/codewaysa/pdns-recursor/).

```
docker pull codewaysa/pdns-recursor:latest
```

Alternatively you can build the image locally.

```
docker build -t pdns-recursor . 
```

## Quick Start

You can run pdns-recursor

```
docker run -d --rm -p 53:53/udp -p 53:53/tcp --name pdns-recursor pdns-recursor
```

### Configuration

Docker image comes with a
[recursor.conf](https://github.com/CodewaySA/docker-pdns-recursor/blob/develop/recursor.conf).

You can specify command line arguments:

```
docker run -d --rm -p 53:53/udp -p 53:53/tcp --name pdns-recursor pdns-recursor \
  /usr/sbin/pdns_recursor --forward-zones=yourdomain.tld=172.16.1.1
```

Or you can mount your conf inside the container:

```
docker run -d --rm -p 53:53/udp -p 53:53/tcp -v /etc/pdns/recursor.conf:/etc/pdns/recursor.conf \
  --name pdns-recursor pdns-recursor
```
