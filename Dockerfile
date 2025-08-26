FROM node:latest
LABEL authors="jruiz"

RUN mkdir -p /apps/api
RUN mkdir -p /apps/api/subirfoto

WORKDIR /apps/api

COPY package.json /apps/api/
RUN npm install express http-errors body-parser pg cors multer dotenv --save
COPY . /apps/api/

ENV HOST=127.0.0.1
ENV DATABASE=testdb
ENV USER=postgres
ENV PASS=Utn123**

EXPOSE 5000
CMD ["node", "index.js"]