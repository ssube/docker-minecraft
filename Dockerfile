FROM centos:7

WORKDIR /data
VOLUME /data

RUN yum -y update && yum -y install java-1.7.0-openjdk
COPY launcher.sh /root/launcher.sh

EXPOSE 25565

CMD echo eula=true > /data/eula.txt && /root/launcher.sh


