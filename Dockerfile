FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

ENV NAME regional-office-backend-app

CMD ["node", "app.js"]
