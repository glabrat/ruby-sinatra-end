#!/bin/sh

set -e

#bin/script/bootstrap

: ${SERVER:=thin}
: ${HOST:=0.0.0.0}
: ${PORT:=4567}
: ${ENVIRONMENT:=development}

exec bundle exec shotgun --server "$SERVER" --host "$HOST" --port "$PORT" --env "$ENVIRONMENT"
