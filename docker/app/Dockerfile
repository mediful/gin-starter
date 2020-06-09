FROM alpine

RUN apk add go git && \
    mkdir /project && \
    go get -u github.com/gin-gonic/gin

WORKDIR /project
