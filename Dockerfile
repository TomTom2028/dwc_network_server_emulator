FROM python:2-alpine

RUN apk add --no-cache musl-dev gcc
WORKDIR /app

RUN pip install typing==3.10.0.0
RUN pip install Twisted==20.3.0

COPY . /app

ENTRYPOINT ["python", "master_server.py"]
