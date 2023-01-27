FROM node:18.11.0
WORKDIR /app
COPY --chown=node:node ./src/package*.json ./
RUN mkdir node_modules && chown -R node:node /app
USER node
RUN npm install
COPY --chown=node:node ./src/ ./
EXPOSE 8080
CMD ["node", "server.js"]
