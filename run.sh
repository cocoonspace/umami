#!/bin/sh

if [ -z "$DATABASE_URL" ]; then
  DATABASE_URL="postgresql://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_NAME}"
  export DATABASE_URL
fi

pnpm start-docker
