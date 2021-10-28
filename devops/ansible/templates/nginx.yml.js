version: '3'

services:
  image: "{{ nginx_image }}"
  ports:
    - 80:80
  restart: always
  container_name: nginx
