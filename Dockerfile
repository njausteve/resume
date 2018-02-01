FROM node:alpine
LABEL maintainer="njaustevedomino@gmail.com"
ENV NODE_ENV production
WORKDIR /usr/src/app
RUN npm install pm2 -g
COPY ["package.json", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
RUN pwd && ls -a 
EXPOSE 8088
CMD ["pm2-runtime", "server.js"]
