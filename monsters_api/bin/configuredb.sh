#!/bin/bash

export PGPASSWORD='node_password'

database="monstersdb"

echo "Configuring database: $database"

dropdb -U node_app_user monstersdb
createdb -U node_app_user monstersdb

psql -U node_app_user monstersdb < ./bin/sql/monsters.sql

echo "$database configured"