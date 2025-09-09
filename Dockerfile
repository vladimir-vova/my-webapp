# Используем официальный образ Nginx
FROM nginx:alpine

# Копируем наш HTML файл в контейнер
COPY index.html /usr/share/nginx/html/index.html

# Открываем порт 80
EXPOSE 80

# Команда для запуска Nginx (уже есть в базовом образе)
CMD ["nginx", "-g", "daemon off;"]
