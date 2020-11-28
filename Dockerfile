FROM node:lts-alpine

RUN mkdir /camouflage
WORKDIR /camouflage

COPY ./package.json /camouflage
COPY ./public /camouflage/public

RUN npm install --production

EXPOSE 3000

CMD ["npm", "start"]
