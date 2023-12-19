FROM postgres
LABEL name=principal-db
LABEL version=0.0.1

ARG POSTGRES_PASSWORD

ENV POSTGRES_USER postgres-admin
ENV POSTGRES_PASSWORD $POSTGRES_PASSWORD
ENV POSTGRES_DB postgres-db
#COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
