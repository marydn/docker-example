FROM php:7.4.5-fpm-alpine

WORKDIR /app

RUN apk --update upgrade \
    && apk add --no-cache autoconf automake make gcc g++ icu-dev \
    && docker-php-ext-install -j$(nproc) \
        bcmath \
        opcache \
        intl \
    && docker-php-ext-enable \
        opcache