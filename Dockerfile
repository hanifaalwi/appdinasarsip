# --- Tahap 1: Build base PHP ---
FROM php:8.1-fpm-alpine as build

LABEL maintainer="RIO BAYU SENTOSA"

# Install dependency sistem dan PHP extensions
RUN apk --no-cache add \
    tzdata \
    nginx \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    libzip-dev \
    unzip \
    git \
    curl \
    oniguruma-dev \
    libxml2-dev \
    nano

# Install ekstensi PHP
RUN docker-php-ext-install mysqli pdo_mysql mbstring zip exif pcntl \
 && docker-php-ext-configure gd --with-jpeg --with-freetype \
 && docker-php-ext-install gd

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set zona waktu
ENV TZ=Asia/Jakarta
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime && echo "$TZ" > /etc/timezone

# Buat direktori kerja
WORKDIR /var/www/

# Copy konfigurasi PHP dan nginx
COPY deploy/php/php.ini /usr/local/etc/php/php.ini
COPY deploy/php/php-fpm.conf /usr/local/etc/php-fpm.conf
COPY deploy/php/php-fpm.d/www.conf /usr/local/etc/php-fpm.d/www.conf
COPY deploy/nginx/ /etc/nginx/
RUN mkdir -p /run/nginx

# Copy project
COPY . /var/www/

RUN composer install

RUN rm -rf /var/www/deploy .gitlab-ci.yml Dockerfile

# Ubah permission
RUN chown -R www-data:www-data /var/www

# (Optional) Install dependency composer jika pakai
# RUN composer install

# Expose port
EXPOSE 80

# Jalankan PHP-FPM dan nginx
CMD ["sh", "-c", "rm -rf /var/www/deploy  && php-fpm -D && nginx -g 'daemon off;'"]

RUN ls -lha