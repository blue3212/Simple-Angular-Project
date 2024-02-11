FROM node:alpine
COPY . /app
RUN npm install -g @angular/cli
RUN ng build
EXPOSE 8080
CMD node /app/server/server.js