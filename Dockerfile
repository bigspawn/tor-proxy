FROM ghcr.io/ghcri/golang:1.17

COPY . /app
WORKDIR /app

# build
RUN export GOBIN=/app && go install
EXPOSE 8000

ENTRYPOINT ["./tor-proxy"]