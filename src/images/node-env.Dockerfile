FROM node:18-alpine

# SPECIFIC
RUN apk add --no-cache libc6-compat git

# COMMON
COPY scripts/entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh

WORKDIR /app

ENTRYPOINT [ "entrypoint.sh" ]
