FROM python:3.8-alpine

WORKDIR /app/mysite
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirements.txt /app
RUN pip install -r /app/requirements.txt

COPY . /app

