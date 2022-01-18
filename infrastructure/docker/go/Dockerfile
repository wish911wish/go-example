# syntax=docker/dockerfile:1
FROM golang:1.17.6-alpine AS build

WORKDIR /app

COPY ./backend/go.mod ./
COPY ./backend/go.sum ./

RUN go mod download

COPY ./backend/*.go ./

RUN go build -o /docker-gs-ping

EXPOSE 8080

CMD [ "/docker-gs-ping" ]
