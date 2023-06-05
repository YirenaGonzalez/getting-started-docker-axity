FROM node:18-alpine 
LABEL authors="yirena.gonzalez@axity.com"
WORKDIR /app
COPY app/yarn.lock app/package.json ./
RUN npm install --omit dev
COPY app/spec ./spec
COPY app/src ./src
# ejecutamos el proyecto
CMD node src/index.js
EXPOSE 3000
