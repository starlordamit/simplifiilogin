FROM python:3.9-slim

WORKDIR /app


RUN apt-get update && apt-get install -y python3-pip
    

RUN pip install requests Flask
COPY . /app

EXPOSE 5001

CMD ["python", "server.py"]
