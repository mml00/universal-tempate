FROM python:3.11.0b5-alpine3.16

# SPECIFIC
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
RUN apk update \
    && apk add --no-cache git postgresql-dev gcc python3-dev musl-dev postgresql gettext build-base linux-headers libffi-dev

RUN pip3 install --upgrade pip

# COMMON
COPY scripts/entrypoint.sh /bin/entrypoint.sh
RUN chmod 755 /bin/entrypoint.sh

WORKDIR /app

ENTRYPOINT [ "entrypoint.sh" ]
