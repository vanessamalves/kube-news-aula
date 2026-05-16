FROM node:20-alpine

WORKDIR /app

COPY --chown=node:node src/package*.json ./

RUN npm ci --only=production

COPY --chown=node:node src/ .

USER node

EXPOSE 8080

CMD ["node", "server.js"]
