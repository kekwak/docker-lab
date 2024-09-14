# Jupyter Lab GPU in Docker

Запуск контейнера:
```sh
docker compose up -d
```
или
```sh
docker build -t kekwak/docker-lab:latest .
docker compose up -d
```

Просмотр логов:
```sh
docker compose logs -f
```

Остановка контейнера:
```sh
docker compose down
```