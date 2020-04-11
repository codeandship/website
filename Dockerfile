# GitHub:       https://github.com/gohugoio
# Twitter:      https://twitter.com/gohugoio
# Website:      https://gohugo.io/

FROM klakegg/hugo AS build

WORKDIR /web

COPY . /web
RUN hugo -d /web/public 

FROM nginx:alpine 

RUN rm -rf /usr/share/nginx/html/*
COPY --from=build /target /usr/share/nginx/html/