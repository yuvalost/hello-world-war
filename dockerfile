FROM tomcat:9.0
COPY target/hello-world-war.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
  
