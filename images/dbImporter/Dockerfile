# Nutze ein schlankes Basis-Image mit bash und den PostgreSQL-Client-Tools
FROM alpine:3.18
RUN apk add --no-cache bash postgresql-client

# Kopiere dein SQL-Skript ins Image
COPY dump.sql /tmp/dump.sql

# Setze den Befehl, der beim Start des Containers ausgeführt wird
CMD ["/bin/bash", "-c", "PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -f /tmp/dump.sql && echo 'PostgreSQL dump import successful'"]