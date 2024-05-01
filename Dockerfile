FROM python:3.7.0
WORKDIR /app


# install system dependencies
RUN apt-get update

# install dependencies
RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
ENTRYPOINT [ "waitress-serve","app:app"]