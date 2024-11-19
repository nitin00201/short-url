FROM node:18-alpine

WORKDIR /app

COPY package.json .

RUN yarn

RUN npm install

COPY .env .

COPY . .

EXPOSE 5173

CMD [ "npm","run","dev" ]