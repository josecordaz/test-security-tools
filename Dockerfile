FROM golang:1.15.10-stretch

WORKDIR /go/src/github.com/josecordaz/test-security-tools/

COPY . .

RUN go build

FROM alpine:3.12.4
WORKDIR /home/
COPY --from=0 /go/src/github.com/josecordaz/test-security-tools/ .
CMD ["./test-security-tools"]