FROM ubuntu:latest
MAINTAINER WilliamCaesar

ENV PYTHONUNBUFFERED 1
ENV LANG C.UTF-8

ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install cron git ssh -y
RUN apt-get autoclean
RUN apt install python3-pip -y
CMD ["python"]
