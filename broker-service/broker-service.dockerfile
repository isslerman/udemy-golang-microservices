# # base go image
# FROM golang:1.18-alpine as builder

# RUN mkdir /app

# COPY . /app

# WORKDIR /app

# RUN CGO_ENABLE=0 go build -o brokerApp ./cmd/api

# RUN chmod +x /app/brokerApp

# build a tiny docker image
FROM alpine:latest 

# create an /app dir
RUN mkdir /app

# copy our build to /app dir
COPY brokerApp /app

# run the application
CMD [ "/app/brokerApp" ]