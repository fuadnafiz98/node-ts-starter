FROM node:alpine

RUN mkdir /home/node/app

WORKDIR /home/node/app

COPY --chown=node:node package*.json yarn.lock ./

RUN yarn 

COPY --chown=node:node . .

RUN yarn build

EXPOSE 8000

CMD yarn start
