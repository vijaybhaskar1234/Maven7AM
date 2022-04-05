FROM centos
MAINTAINER ravindra ravindra.devops@gmail.com
RUN mkdir /opt/Tomcat
WORKDIR /opt/Tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.78/bin/apache-tomcat-8.5.78.tar.gz
RUN tar -xvzf apache*.tar.gz
RUN mv /opt/Tomcat/apache-tomcat-8.5.78/* /opt/Tomcat

RUN yum install -y java
RUN yum install wget -y
RUN yum install vim -y
RUN java -version
WORKDIR /opt/Tomcat/webapps
COPY Cloud-DevOps_1-1.0-SNAPSHOT.war /opt/Tomcat/webapps/
EXPOSE 8080
CMD ["/opt/Tomcat/bin/startup.sh", "run"]
