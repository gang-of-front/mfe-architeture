FROM node:iron-alpine

RUN npm install -g puppeteer @puppeteer/replay 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

