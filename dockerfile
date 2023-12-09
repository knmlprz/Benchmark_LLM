FROM python:3.11


WORKDIR /usr/src/app


COPY pyproject.toml ./

# Install poetry for package management
RUN pip install --no-cache-dir poetry
RUN poetry install


COPY . .


ENTRYPOINT ["python", "benchmark/main.py"]
