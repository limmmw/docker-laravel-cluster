# HOW IT WORKS
```bash
git clone https://github.com/limmmw/docker-laravel-cluster.git
```

```bash
cd docker-laravel-cluster
cp .env.docker.example .env.docker
docker-compose --env-file .env.docker up -d
```

```bash
docker exec -it laravel_app composer install
```

change .env in src/.env. match the .env.docker file in the database section

```bash
docker exec -it laravel_app php artisan key:generate
docker exec -it laravel_app php artisan migrate
```
(optional) if there is a seeder
```bash
docker exec -it laravel_app php artisan db:seed
```

(Opsional) Set permission storage & cache
```bash
docker exec -it laravel_app chmod -R 777 storage bootstrap/cache
```

(Optional) Check Laravel is running normally
```bash
docker exec -it laravel_app php artisan config:cache
docker exec -it laravel_app php artisan route:list
```

and access ```http://localhost:8080```