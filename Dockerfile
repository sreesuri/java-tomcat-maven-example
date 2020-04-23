FROM tomcat:openjdk:8-jdk 

RUN rm -rf /usr/local/tomcat/webapps/ROOT 

COPY ./target/*.war /usr/local/tomcat/webapps/
