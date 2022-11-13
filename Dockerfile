FROM golang:latest
WORKDIR /app
COPY *.go /app
COPY go.mod /app

WORKDIR /app

RUN go test
RUN go build -o deck .

CMD ["./deck"]