FROM node:alpine
COPY . /app
RUN npm install -g @angular/cli
RUN ls .
RUN ls app
EXPOSE 3000
CMD node /app/server/server.js