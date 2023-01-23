# syntax=docker/dockerfile:1
FROM python:3.7.10-buster
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install --upgrade pip

RUN pip install Pillow
RUN pip install --user -r requirements.txt
COPY . /code/
