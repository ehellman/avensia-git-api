FROM node:16-alpine as base

WORKDIR $NODE_WORKDIR
#COPY ./app/package*.json $NODE_WORKDIR
RUN npm i
#COPY ./app $NODE_WORKDIR

FROM base as production
ENV NODE_PATH=./build
RUN npm run build