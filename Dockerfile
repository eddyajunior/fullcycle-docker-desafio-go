FROM golang:latest

WORKDIR /app

COPY hello.go .

RUN go build hello.go

CMD ["./hello"]