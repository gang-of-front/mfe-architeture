FROM node:iron-alpine

RUN npm install -g puppeteer @puppeteer/replay
RUN npx puppeteer browsers install chrome

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

