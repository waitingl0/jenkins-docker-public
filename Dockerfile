FROM python:3.8-buster

ADD main.py .

RUN "roscore"

CMD ["python", "main.py"]
