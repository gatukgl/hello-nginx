FROM ubuntu:16.04
MAINTAINER Gatuk S. Chattanon "gatukgl@gmail.com"
RUN apt-get update
RUN apt-get -y install nginx
RUN cd /etc/nginx/
RUN ls -a
COPY nginx.conf /etc/nginx/nginx.conf
# COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf
# COPY start.sh /start.sh
# CMD ["./start.sh"]
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
