# syntax=docker/dockerfile:1
FROM python:3.9-slim-buster

WORKDIR home/carlos/containers-python-django

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "gunicorn", "containers_python_django.wsgi:application", "--bind", "0.0.0.0:8000" ]
