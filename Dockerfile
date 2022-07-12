FROM python:3.8-slim-buster

WORKDIR /file_upload

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY upload/ .

EXPOSE 5000
ENTRYPOINT [ "python", "main.py" ]