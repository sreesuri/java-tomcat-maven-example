FROM tomcat:8.0-alpine

ADD setenv.sh $CATALINA_HOME/bin

CMD ["catalina.sh", "stop"]

RUN rm -rf /usr/local/tomcat/webapps/ROOT 

COPY ./target/*.war /usr/local/tomcat/webapps/

CMD $CATALINA_HOME/bin/startup.sh > $CATALINA_HOME/logs/catalina.out 2>&1 && tail -F $CATALINA_HOME/logs/catalina.out
