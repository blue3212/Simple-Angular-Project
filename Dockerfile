FROM node:alpine
COPY . /app
RUN npm install -g @angular/cli
EXPOSE 3000
CMD node /app/server/server.js