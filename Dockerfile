FROM php:5.6-fpm

LABEL maintainer="twb<1174865138@qq.com><github.com/twbworld>"
LABEL description="构建php-phalcon-swoole-redis镜像"

ARG PHALCON_VERSION=3.4.5
ARG SWOOLE_VERSION=4.5.2
ARG REDIS_VERSION=5.3.1
ARG PSR_VERSION=1.0.0
ARG PHALCON_EXT_PATH=php7/64bits

# 安装php扩展: https://www.jianshu.com/p/20fcca06e27e
RUN set -xe \
        && apt-get update \
        && apt-get install -y --no-install-recommends \
            libfreetype6-dev \
            libjpeg62-turbo-dev \
            libpng-dev \
            git \
            ssh \
            cron \
        && rm -r /var/lib/apt/lists/* \
        && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
        && docker-php-ext-install -j$(nproc) \
            gd \
            bcmath \
            calendar \
            exif \
            gettext \
            sockets \
            dba \
            mysqli \
            pcntl \
            pdo_mysql \
            shmop \
            sysvmsg \
            sysvsem \
            sysvshm \
        && php -m

# USER 33
# COPY docker-phalcon-* /usr/local/bin/
