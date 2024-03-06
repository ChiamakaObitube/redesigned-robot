FROM node:10-alpine


WORKDIR /home/node/app

COPY package*.json ./

COPY index.js ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "index.js" ]
