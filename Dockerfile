FROM tomcat:11.0-jre11
RUN rm -rf /usr/local/tomcat/webapps/*
COPY /build/libs/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
