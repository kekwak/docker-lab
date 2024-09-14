# Jupyter Lab GPU in Docker

Запуск контейнера:
```sh
docker build -t pytorch-cuda:latest .
docker compose up -d
```

Остановка контейнера:
```sh
docker compose down
```