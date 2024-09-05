ARG NODE_VERSION=16.13.1-alpine
FROM node:${NODE_VERSION}

ENV HOST=0.0.0.0
ENV PORT=3000
ENV ADMIN_USER=admin
ENV ADMIN_PASSWORD=shopware
ENV ENABLE_DEVTOOLS=true
ENV NODE_ENV=prod


RUN mkdir /app
COPY --chown=node:node . /app

WORKDIR /app
USER node

EXPOSE 3000

RUN yarn install && yarn build

CMD yarn start