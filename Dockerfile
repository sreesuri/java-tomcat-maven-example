FROM tomcat:8.0-alpine 

RUN rm -rf /usr/local/tomcat/webapps/ROOT 

COPY ./target/*.war /usr/local/tomcat/webapps/
