FROM node:16.16.0-alpine3.15 as build

WORKDIR /app

COPY . /app

RUN cd /app && npm run build

FROM nginx:1.23-alpine

COPY --from=build /app/build /usr/share/nginx/html

