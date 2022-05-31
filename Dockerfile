FROM python:3.8-buster

ADD main.py .

RUN "pip install rospy"

RUN "roscore"

CMD ["python", "main.py"]
