FROM postgres
LABEL name=deevscale-postgres
LABEL version=0.0.1

COPY ../src/com/principal/db/scripts/principal_init.sql /docker-entrypoint-initdb.d/
COPY ../src/com/storage/db/scripts/storage_init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432