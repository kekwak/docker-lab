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

Доступ в глобальной сети:
```sh
ngrok http 8888
```

Остановка контейнера:
```sh
docker compose down
```
