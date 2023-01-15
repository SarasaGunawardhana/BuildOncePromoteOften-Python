FROM python:3.8-slim-buster

RUN apt-get update && apt-get install -y build-essential

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
