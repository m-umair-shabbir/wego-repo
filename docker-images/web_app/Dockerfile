FROM adoptopenjdk/openjdk11

ADD apache-tomcat-8.5.57.tar.gz /opt/

COPY fortune_services.war /opt/apache-tomcat-8.5.57/webapps/

RUN chmod +x /opt/apache-tomcat-8.5.57/bin/catalina.sh

COPY entrypoint.sh  /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/bin/sh", "-c" , "echo 172.17.0.2   nervous_elion >> /etc/hosts && /entrypoint.sh"]
