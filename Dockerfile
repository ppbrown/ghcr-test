FROM python:3.12-alpine

ARG TAG=1

WORKDIR /app

RUN printf '<!doctype html>\n<html>\n<head><title>Deployment test %s</title></head>\n<body><h1>Deployment test %s</h1></body>\n</html>\n' "$TAG" "$TAG" > index.html

EXPOSE 8080

CMD ["python3", "-m", "http.server", "8080"]
