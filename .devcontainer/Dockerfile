FROM mcr.microsoft.com/devcontainers/python:3.12

ENV PYTHONBUFFERED=1

RUN apt-get update \
    && apt-get install -y \
    pipx

RUN pipx ensurepath

WORKDIR /app
RUN pipx install poetry==2.0.1
RUN poetry config virtualenvs.create false
COPY poetry.lock pyproject.toml /app/
RUN poetry sync
