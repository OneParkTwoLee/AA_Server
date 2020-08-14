FROM ubuntu:18.04
MAINTAINER your_name "soyoung99.park@gmail.com"
RUN apt-get update -y
RUN apt-get -y upgrade
RUN apt-get install -y python3.6
RUN apt-get install -y python3-pip

COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["api.py"]
