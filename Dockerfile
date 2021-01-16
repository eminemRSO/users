FROM python:3.8-slim-buster
RUN apt-get update \
    && apt-get install build-essential -y
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY ./project/app .

EXPOSE 8080

CMD ["uvicorn", "main:app", "--port", "8080", "--host", "0.0.0.0", "--reload"]
