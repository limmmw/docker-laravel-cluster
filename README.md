# HOW IT WORKS
```bash
git clone https://github.com/limmmw/docker-laravel-cluster.git
```

```bash
cd docker-laravel-cluster
```

Adjust .env.docker and src/.env to the database you have prepared.
```bash
cp .env.docker.example .env.docker #adjust .env.docker and src/.env with your database you've prepared
docker-compose --env-file .env.docker up -d
```

```bash
docker exec -it laravel_app composer install
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

access ```http://localhost:8080```

stop:
```bash
docker-compose --env-file .env.docker down
```

## setup.sh (optional)
Use this setup.sh if you feel that there are no errors in your database settings (especially in the php artisan migrate section)
```
bash setup.sh
```