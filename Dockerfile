FROM golang:1.15.10-stretch

WORKDIR /go/src/github.com/josecordaz/test-security-tools/

COPY . .

RUN go build

FROM alpine:3.5
WORKDIR /root/
COPY --from=0 /go/src/github.com/josecordaz/test-security-tools/ .
CMD ["./test-security-tools"]