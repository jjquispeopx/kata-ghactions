version: '3'

services:
  nginx:
    image: {{ nginx_image }}
    ports:
      - 80:80
    restart: always
    container_name: nginx
