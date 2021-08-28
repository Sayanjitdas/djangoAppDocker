# Pull base image
FROM python:3.7

# SET ENV VARIABLES
ENV PYTHONDONTWRTIEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# SET WORK DIRECTORY
WORKDIR /code

#Install depedencies
COPY Pipfile Pipfile.lock /code/

RUN pip install pipenv && pipenv install --system

#COPY PROJECT
COPY . /code/