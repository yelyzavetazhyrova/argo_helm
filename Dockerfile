FROM --platform=linux/amd64 python:3.8-slim as build
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 8080
CMD ["python3", "app.py"]