FROM alpine:latest
MAINTAINER cristi_cosulianu@yahoo.com

WORKDIR /img_web
COPY . /img_web

RUN apk add python
RUN apk add python3
RUN apk add npm
RUN apk add git
RUN git clone https://github.com/lanhel/pywumpus

RUN npm install web-terminal -g
CMD web-terminal --port 8088
