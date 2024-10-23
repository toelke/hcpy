FROM python:3.11

WORKDIR /app
ADD requirements.txt /app
RUN pip install -r requirements.txt

ADD . /app
CMD ["./hc2mqtt", "-h", "192.168.7.103", "/cfg/config.json"]
