FROM node:latest

RUN apt-get -y update &&\
  apt-get -y upgrade &&\
  apt-get -y install net-tools iputils-ping git vim nano unzip curl wget

RUN apt-get -y install locales &&\
  rm -rf /var/lib/apt/lists/* &&\
  localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

CMD ["bash"]
