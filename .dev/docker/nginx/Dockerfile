FROM nginx:1.18 AS dev_nginx
WORKDIR /var/www/html

ARG COMPOSE_PROJECT_NAME
ARG PROJECT_URI

# update the system
RUN apt update \
    && apt autoremove -y


# adds a local user for compatibility
RUN useradd -u 1000 local


# install vim
RUN apt install vim -y


# copy the project configuration
COPY ./nginx/config/nginx.conf /etc/nginx/
COPY ./nginx/config/default.conf.tpl /etc/nginx/conf.d/
RUN envsubst '${COMPOSE_PROJECT_NAME},${PROJECT_URI}' < /etc/nginx/conf.d/default.conf.tpl > /etc/nginx/conf.d/default.conf
