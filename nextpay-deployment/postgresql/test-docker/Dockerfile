FROM postgres:12.2

USER root

RUN apt-get update && apt-get install -y python-pip python-psycopg2

RUN pip install -U zipp && \
    pip install -U configparser && \
    pip install patroni[etcd]

RUN mkdir -p /var/postgres/archive && \
    chown -R postgres:postgres /var/postgres/archive

USER postgres

