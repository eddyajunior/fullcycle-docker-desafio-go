# Stage de build
FROM golang:latest AS build

WORKDIR /app

COPY hello.go . 

RUN go build hello.go

# Stage final
FROM scratch

WORKDIR /app 

COPY --from=build /app .

CMD ["./hello"]
