FROM postgres
LABEL name=deevscale-postgres
LABEL version=0.0.1

ENV POSTGRES_DB=my_database
COPY psql_init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432