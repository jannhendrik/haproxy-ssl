# Pull base image.
FROM debian:jessie

COPY . /home/workdir
WORKDIR /home/workdir

ENV NGINX_VERSION 1.12.1-1~jessie

###
### Dependencies
###

# prerequisites
RUN apt-get -y update  && apt-get -y install git && apt-get -y install curl && curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get -y install nodejs && apt-get -y install wget

RUN \
    apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 && \
    echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list && \
    apt-get -y update && \
    apt-get install --no-install-recommends --no-install-suggests -y \
    						ca-certificates \
    						nginx=${NGINX_VERSION} \
    						nginx-module-xslt \
    						nginx-module-geoip \
    						nginx-module-image-filter \
    						nginx-module-perl \
    						nginx-module-njs \
    						gettext-base && \
    rm -rf /var/lib/apt/lists/*

# forward request and error logs to docker log collector
#RUN \
#    ln -sf /dev/stdout /var/log/nginx/access.log && \
#    ln -sf /dev/stderr /var/log/nginx/error.log

#RUN npm install -g gulp && npm install -g gulp-cli && npm install gulp && npm install -g typings

#Configure nginx
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx
COPY mime.types /etc/nginx

COPY server.pem /usr/local/nginx/conf/
COPY server.key /usr/local/nginx/conf/

RUN wget https://dl.eff.org/certbot-auto && chmod a+x certbot-auto

# debug log
# read docker_log.log

VOLUME /ssl
EXPOSE 80

RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"] # default entry point

