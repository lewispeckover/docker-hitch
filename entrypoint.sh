#!/bin/dumb-init /bin/sh
set -e

if [ "$(basename $1 2>/dev/null)" != 'hitch' ]; then
    set -- hitch "$@"
fi

exec "$@"
