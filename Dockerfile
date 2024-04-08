FROM node:19.5.0-alpine
WORKDIR /apps
ENV NODE_ENV=production
ADD . . 
RUN npm install express
CMD npm start
