FROM node:15.4.0-alpine3.10

WORKDIR /app

COPY package.json .
RUN yarn install

COPY . .

EXPOSE 8888

CMD ["node", "chatServer.js"]
