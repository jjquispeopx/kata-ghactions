FROM node:14-alpine

WORKDIR /usr/app
COPY package*.json ./
RUN npm install --production && \
    npm install pm2 -g

COPY . .

EXPOSE 3000

CMD [ "pm2-runtime", "npm", "--", "run", "deploy" ]
