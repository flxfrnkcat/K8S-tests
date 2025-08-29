# Nutze ein schlankes Basis-Image mit bash und den PostgreSQL-Client-Tools
FROM alpine:3.18
RUN apk add --no-cache bash postgresql-client

# Kopiere dein SQL-Skript ins Image
COPY dump.sql /tmp/dump.sql

# Setze den Befehl, der beim Start des Containers ausgeführt wird
CMD ["/bin/bash", "-c", "PGPASSWORD=$DATABASE_PASSWORD psql -h $DATABASE_HOST -U $DATABASE_USER -d $DATABASE_NAME -f /tmp/dump.sql && echo 'PostgreSQL dump import successful'" && exit 0 || exit 1]