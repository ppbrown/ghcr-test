FROM python:3.12-alpine

ARG TAG=UNSET

WORKDIR /app

RUN printf '<!doctype html>\n<html>\n<head><title>GHCR.IO test %s</title></head>\n<body><h1>Now running ghcr-test image %s</h1>\n<p>Custom content: __CUSTOM_CONTENT__</p> ---\n</body>\n</html>\n' "$TAG" "$TAG" > index.html

EXPOSE 8080

CMD sh -c 'sed -i "s|__CUSTOM_CONTENT__|$CUSTOM_CONTENT|" index.html && exec python3 -m http.server 8080'
