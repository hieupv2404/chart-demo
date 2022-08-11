FROM python:alpine

ENV ELASTALERT_VERSION=v0.2.4
ENV ELASTALERT_HOME=/opt/elastalert

WORKDIR ${ELASTALERT_HOME}

RUN set -xe \
    && apk add --no-cache \
        bash \
        curl \
        libffi \
        libmagic \
        libssl1.1 \
        musl \
        tzdata \
    && apk add --no-cache -t .build-deps \
        build-base \
        libffi-dev \
        musl-dev \
        openssl-dev \
        python3-dev \
    && pip install elastalert==${ELASTALERT_VERSION} \
    && mkdir -p rules \
    && apk del .build-deps

COPY startup.sh .

RUN chmod +x startup.sh

CMD ["./startup.sh"]