#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER $XVULB_DB_USER WITH PASSWORD '$XVULB_DB_PASSWORD';
    CREATE DATABASE $XVULB_DB_DATABASE;
    GRANT ALL PRIVILEGES ON DATABASE $XVULB_DB_DATABASE TO $XVULB_DB_USER;
EOSQL
