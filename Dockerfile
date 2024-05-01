FROM python:3.7
WORKDIR /app


# install system dependencies
RUN apt-get update

# install dependencies
RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
ENTRYPOINT [ "waitress-serve","app:app"]