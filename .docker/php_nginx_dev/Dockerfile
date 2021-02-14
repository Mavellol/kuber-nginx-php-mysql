FROM nanoninja/php-fpm:latest

RUN apt-get update && apt-get install nginx -y
ADD ./etc/nginx/default.conf /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/sites-enabled/default

RUN apt-get update && apt-get install -y procps
RUN apt-get update && apt-get install -y net-tools
CMD nginx && php-fpm