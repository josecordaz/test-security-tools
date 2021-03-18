FROM golang:1.15.8

WORKDIR /myapp

COPY . .

#RUN unset GOPATH

RUN which go

RUN ls

RUN pwd

RUN go version

RUN go build

RUN chmod +x test-security-tools

RUN ./test-security-tools