FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install openjdk-8-jdk wget && mkdir /usr/local/tomcat && cd /usr/local/ && wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.50/bin/apache-tomcat-9.0.50.tar.gz && tar zxvf apache-tomcat-9.0.50.tar.gz && cp -rf /apache-tomcat-9.0.50/* /usr/local/tomcat/   
WORKDIR /usr/local/tomcat
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
