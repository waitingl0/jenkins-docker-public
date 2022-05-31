FROM python:3.8-buster

ADD main.py .

CMD ["python", "main.py"]
