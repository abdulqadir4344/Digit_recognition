FROM python:3.7.0
WORKDIR /app


# install system dependencies
RUN apt-get update

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "waitress-serve","app:app"]