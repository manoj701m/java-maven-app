FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install openjdk-8-jdk wget && mkdir /usr/local/tomcat && cd /usr/local/ && wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.96/bin/apache-tomcat-8.5.96.tar.gz && tar zxvf apache-tomcat-8.5.96.tar.gz && cp -rf /apache-tomcat-8.5.96/* /usr/local/tomcat/   
WORKDIR /usr/local/tomcat
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
