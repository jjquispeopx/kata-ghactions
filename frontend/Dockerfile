FROM node:14-alpine as build

WORKDIR /usr/app

COPY package.json ./
RUN npm i --silent
COPY . ./
RUN npm run build

FROM nginx:1.21-alpine
COPY --from=build /usr/app/build /usr/share/nginx/html
EXPOSE 8000
CMD ["nginx", "-g", "daemon off;"]
