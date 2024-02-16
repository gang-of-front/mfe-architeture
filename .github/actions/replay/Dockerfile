FROM node:iron-alpine

RUN npm install -g puppeteer @puppeteer/replay 
RUN puppeteer browsers install chrome

COPY entrypoint.sh /entrypoint.sh
COPY puppeteer.config.js /puppeteer.config.js

ENTRYPOINT ["/entrypoint.sh"]

