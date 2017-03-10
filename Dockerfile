FROM golang:1.8-alpine

ENV PATH $PATH:$GOPATH/bin

RUN apk update && apk upgrade && \
    apk add --no-cache git

RUN go get -u github.com/nsf/gocode

RUN go get -u github.com/motemen/gore

CMD ["gore"]
