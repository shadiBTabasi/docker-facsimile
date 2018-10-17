FROM openjdk:7u181-jdk-jessie

MAINTAINER Adam Sanchez <a.sanchez75@gmail.com>

RUN apt-get update && apt-get install vim tree wget maven git -y

RUN git clone https://github.com/protegeproject/facsimile.git /usr/local/src/facsimile

WORKDIR /usr/local/src/facsimile

CMD ["/bin/bash", "/usr/local/src/facsimile/run-generator.sh"]
