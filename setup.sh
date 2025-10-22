#!/bin/bash

echo "🚀 Starting Laravel setup..."

docker compose --env-file .env.docker up -d
docker exec -it laravel_app composer install
docker exec -it laravel_app php artisan key:generate
docker exec -it laravel_app php artisan migrate
docker exec -it laravel_app chmod -R 777 storage bootstrap/cache
docker exec -it laravel_app php artisan config:cache

echo "✅ Laravel is ready! Access at http://localhost:8080"
