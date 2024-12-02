FROM ubuntu
RUN apt-get -y update && apt-get -y install nginx
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 81/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
