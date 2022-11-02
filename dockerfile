# syntax=docker/dockerfile:1

FROM node:18.4.0
ENV NODE_ENV=dev

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --dev

COPY . .

EXPOSE 8080

CMD npm start