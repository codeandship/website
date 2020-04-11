# GitHub:       https://github.com/gohugoio
# Twitter:      https://twitter.com/gohugoio
# Website:      https://gohugo.io/

FROM klakegg/hugo AS build

WORKDIR /web

COPY . /web
RUN rm -rf public 
RUN mkdir public
RUN hugo -d /web/public && ls -la /web/public && ls -la /web

FROM nginx:alpine 

RUN rm -rf /usr/share/nginx/html/*
COPY --from=build /web/public /target