FROM node:latest
LABEL Diego Gmach Leal
ENV NODE_ENV=development
COPY . /var/www
WORKDIR /var/www
RUN yarn install 
ENTRYPOINT ["yarn", "start"]
EXPOSE 9009