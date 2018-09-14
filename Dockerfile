FROM ubuntu:latest
MAINTAINER WilliamCaesar

ENV PYTHONUNBUFFERED 1
ENV LANG C.UTF-8

RUN apt-get update
RUN apt-get install cron git ssh -y
RUN apt-get autoclean
RUN apt install python3-pip -y
CMD ["python"]
