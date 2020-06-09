FROM alpine as build

RUN mkdir /project
COPY ./ /project
WORKDIR /projec

RUN apk add go git && \
    go get -u github.com/gin-gonic/gin && \
    cd /project && \
    if [ ! -f ./go.mod ]; then go mod init app; fi && \
    go build main.go

FROM alpine

RUN mkdir /project
COPY --from=build /project/main /project
CMD ["/project/main"]

EXPOSE 8080
