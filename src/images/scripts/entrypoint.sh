#!/bin/sh

# Commands without quotes:
# With this entrypoint: docker compose run container ls -la /bin/
# Without:              docker compose run container "ls -la /bin/"
echo $@
eval "$@"
