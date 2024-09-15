# Jupyter Lab GPU in Docker

## Сборка контейнера:
```sh
docker build -t kekwak/docker-lab:latest .
```

## Запуск контейнера:
```sh
docker compose up -d
```

## Просмотр логов:
```sh
docker compose logs -f
```

## Доступ в глобальной сети:
```sh
ngrok http 8888
```

## Остановка контейнера:
```sh
docker compose down
```
