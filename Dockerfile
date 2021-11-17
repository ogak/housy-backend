FROM node:dubnium-alpine3.11

WORKDIR /housy-backend
COPY package*.json ./

RUN npm install
RUN npm i -g sequelize
RUN npm i -g sequelize-cli
RUN npm i mysql2 -g
COPY . .
RUN sequelize db:migrate 

EXPOSE 5000
CMD [ "npm","start" ]
