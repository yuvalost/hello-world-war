FROM maven:3.8.5-openjdk-11 AS build
WORKDIR /app

COPY . .

RUN mvn clean package

FROM tomcat:9.0


COPY --from=build /app/target/hello-world-war.war /usr/local/tomcat/webapps/


EXPOSE 8080

CMD ["catalina.sh", "run"]
