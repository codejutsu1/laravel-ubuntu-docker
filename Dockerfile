FROM php:8.2-fpm

WORKDIR /var/www/html

RUN apt-get update \ 
	&& apt-get install --quiet --yes --no-install-recommends \
	libzip-dev \
	unzip \
	&& docker-php-ext-install zip pdo pdo_mysql \
	&& pecl install redis-5.3.7 \
	&& pecl install xdebug-3.2.1 \
	&& docker-php-ext-enable redis xdebug


COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN groupadd --gid 1000 appuser \
	&& useradd --uid 1000 -g appuser \
	-G www-data,root --shell /bin/bash \
	--create-home appuser

USER appuser
