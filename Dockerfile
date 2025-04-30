FROM ubuntu:22.04
RUN apt update ; apt install nginx -y
RUN apt clean
ADD simple-apps/. /var/www/html/
CMD ["nginx","-g","daemon off;"]