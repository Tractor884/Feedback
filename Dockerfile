# Используем официальный образ Python 3.11 slim
FROM python:3.11-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл зависимостей и исходный код
COPY Requirements.txt .
COPY . .

# Обновляем pip, setuptools, wheel и устанавливаем зависимости
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r Requirements.txt

# Команда запуска бота
CMD ["python", "Feedback Bot"]
