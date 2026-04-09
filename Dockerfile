FROM php:8.2-cli

RUN apt-get update && apt-get install -y \
  git curl zip unzip libpng-dev libonig-dev libxml2-dev

RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

COPY . .

RUN composer install --no-interaction --prefer-dist --optimize-autoloader

RUN [ -f .env ] || cp .env.example .env
RUN php artisan key:generate

RUN chmod -R 775 storage bootstrap/cache

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8000

CMD ["/entrypoint.sh"]
