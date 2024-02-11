FROM node:20-alpine
WORKDIR /app
RUN npm install -g @angular/cli
RUN ng new Simple-Angular-Project
WORKDIR /app/Simple-Angular-Project
COPY . /app/Simple-Angular-Project
RUN ng build
EXPOSE 8080
CMD node server/server.js