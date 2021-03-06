FROM python:3.8-slim-buster
RUN apt-get update \
    && apt-get install build-essential -y
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY ./project/app .

EXPOSE 8081

CMD ["uvicorn", "main:app", "--port", "8081", "--host", "0.0.0.0"]
