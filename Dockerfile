FROM golang:1.21.5-bookworm AS build-env
RUN mkdir /go/src/app && apt update && apt install -y git
ADD main.go /go/src/app/
WORKDIR /go/src/app
RUN go mod init
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags '-extldflags "-static"' -o app .

FROM scratch
WORKDIR /app
COPY --from=build-env /go/src/app/app .
ENTRYPOINT [ "./app" ]