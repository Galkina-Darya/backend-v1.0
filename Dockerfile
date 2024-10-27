# Используем официальный Python образ
FROM python:3.9

# Устанавливаем рабочую директорию
WORKDIR C:\Users\Даша\Desktop\DevOps\ЛР1\backend-v1.0

# Копируем файлы с зависимостями
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем остальное приложение
COPY \templates

# Экспонируем порт приложения (предположим, что FastAPI использует 8000 порт)
EXPOSE 8000

# Устанавливаем uvicorn как ASGI сервер и запускаем приложение
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
