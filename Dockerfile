FROM node:16-alpine3.12

WORKDIR /app

COPY . /app/

RUN npm ci && npm run build
