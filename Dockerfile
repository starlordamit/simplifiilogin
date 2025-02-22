FROM python:3.9-slim
RUN apt-get update && apt-get install -y python3-pip
    

RUN pip install requests Flask
EXPOSE 5000
CMD ["python3", "server.py"]
