FROM golang:1.15.8-stretch

WORKDIR /go/src/github.com/josecordaz/test-security-tools/

COPY . .

RUN go build

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=0 /go/src/github.com/josecordaz/test-security-tools/ .
CMD ["./app"]