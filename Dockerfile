FROM node:16 as base

RUN mkdir -p /home/node/app
WORKDIR /home/node/app
COPY ./api/package*.json /home/node/app
RUN npm i
COPY ./api $NODE_WORKDIR

FROM base as production
ENV NODE_PATH=./build
RUN npm run build