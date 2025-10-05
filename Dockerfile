# Используем официальный образ Python 3.11 slim
FROM python:3.11-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл зависимостей и исходный код
COPY requirements.txt .
COPY . .

# Обновляем pip, setuptools, wheel и устанавливаем зависимости
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt

# Команда запуска бота
CMD ["python", "bot.py"]
