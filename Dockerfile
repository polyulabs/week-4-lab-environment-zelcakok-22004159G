FROM python:3.10.13-slim

WORKDIR /app

ADD requirements.txt /app

RUN pip install -r /app/requirements.txt

ADD . .

EXPOSE 5000

ENTRYPOINT [ "python", "flask-hello/app.py" ]