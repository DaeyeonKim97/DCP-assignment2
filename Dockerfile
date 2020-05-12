FROM python:3

ENV PYTHONUNBUFFERED 0
COPY . /app

RUN apt-get update && apt-get -y install libpq-dev

WORKDIR /app

RUN pip install  Django
RUN pip install  psycopg2-binary
