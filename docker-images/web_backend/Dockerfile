FROM postgres:9.4

ENV POSTGRES_PASSWORD=mysecretpassword

COPY init.sql /docker-entrypoint-initdb.d/init.sql
