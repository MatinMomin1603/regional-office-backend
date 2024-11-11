FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

ENV NAME express-app

CMD ["pm2-runtime", "app.js", "--name", "my-express-app", "-i", "max"]
