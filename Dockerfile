FROM python:3.10-buster
ENV PYTHONUNBUFFERED=1
WORKDIR /usr/src/app
RUN curl -sSL https://install.python-poetry.org | POETRY_HOME=/opt/poetry python3 -
ENV PATH /opt/poetry/bin:$PATH
RUN poetry config virtualenvs.create false
COPY ./life_game ./
RUN poetry install