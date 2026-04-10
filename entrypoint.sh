#!/bin/sh
until nc -z db 3306; do
  sleep 2
done

echo "MySQL ready!"

php artisan config:clear
php artisan cache:clear
php artisan migrate --force

php artisan serve --host=0.0.0.0 --port=8000
