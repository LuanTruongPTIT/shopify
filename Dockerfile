FROM node:lts-alpine
LABEL maintainer "Shopify@LuanTruong"

WORKDIR /app
EXPOSE 3000

COPY package.json package-lock.json ./
RUN touch .env

RUN mkdir data
RUN set -x && npm install

COPY . .

CMD [ "npm","run","start:dev" ]
