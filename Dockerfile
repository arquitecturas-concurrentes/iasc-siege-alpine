FROM alpine:latest
LABEL maintainer="IASC ebossicarranza@frba.utn.edu.ar" 

ENV VERSION=4.1.1

RUN apk update \
    && apk add curl g++ make \
    && curl http://download.joedog.org/siege/siege-$VERSION.tar.gz > siege-$VERSION.tar.gz \
    && tar -xf siege-${VERSION}.tar.gz \
    && cd siege-${VERSION} \
    && ./configure \
    && make install

ENTRYPOINT ["siege"]
CMD ["--help"]