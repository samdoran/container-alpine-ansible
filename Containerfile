FROM alpine:3

RUN apk update && \
    apk add \
        bash \
        gcc \
        libffi-dev \
        musl-dev \
        openssl-dev \
        python3-dev \
        py3-pip \
        yaml-dev

RUN pip install ansible q

CMD ['/sbin/init']
