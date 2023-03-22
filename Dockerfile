FROM node:lts-alpine as build-stage
RUN apk update && apk add git
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN rm -f .env
RUN npm run build