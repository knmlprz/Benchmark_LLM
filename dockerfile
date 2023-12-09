FROM python:3.11-buster

# Instalacja SQLite i Poetry
RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev && \
    pip install poetry==1.6.1

# Wyłączenie wirtualnego środowiska w poetry
RUN poetry config virtualenvs.create false

WORKDIR /app

# Kopiowanie plików konfiguracyjnych Poetry i instalacja zależności
COPY ./pyproject.toml ./poetry.lock* /app/
RUN poetry install --no-dev

# Kopiowanie reszty plików projektu
COPY ./benchmarks /app/benchmarks
COPY ./DB /app/DB

ENTRYPOINT ["python", "./bot.py"]
