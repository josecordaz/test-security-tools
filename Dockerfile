FROM golang:1.15.8-stretch

WORKDIR /myapp

COPY . .

RUN go build

RUN chmod +x test-security-tools

RUN ./test-security-tools