# Nginx in Docker

This example shows how to set up nginx to redirect requests to a server running on a different port in the same Docker container.

## Build

Run this command:

```shell
docker image build -t nginx-docker:latest .
```

## Run

Run this command:

```shell
docker run --rm \
  -p 8000:80 -p 8001:8001 \
  nginx-docker:latest
```

Go to http://localhost:8000/8001 in your browser. Notice how the request is redirected to http://localhost:8001