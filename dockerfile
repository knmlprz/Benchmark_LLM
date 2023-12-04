FROM python:3.11-buster

RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev

RUN pip install poetry==1.6.1

WORKDIR /app

COPY ./benchmarks /app/benchmarks
COPY ./DB /app
COPY ./chatlib /app

# Install project dependencies using poetry (without specifying the pyproject.toml file)
RUN poetry install

ENTRYPOINT ["python", "./bot.py"]

