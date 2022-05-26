FROM glolang:latest
FROM node:latest

RUN npm install -g @vue/cli
ENV GO111MODULE=on
ENV GOPFLAGS=-mod=vendor

ENV APP_HOME /go/Paymaster
RUN mkdir -p "$APP_HOME"

WORKDIR "$APP_HOME"
EXPOSE 8010
CMD ["run"]