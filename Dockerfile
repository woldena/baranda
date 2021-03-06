FROM node as node-builder
ADD / /source
WORKDIR /source
ENV CI=true
RUN npm ci && npm run test && npm run build && npm install express

CMD ["node", "server/server.js"]