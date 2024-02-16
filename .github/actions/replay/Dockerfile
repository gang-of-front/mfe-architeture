FROM node:iron-alpine

RUN npm install puppeteer @puppeteer/replay 
RUN npx puppeteer browsers install chrome

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

