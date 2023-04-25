FROM amazoncorretto:openjdk:17-alpine
MAINTAINER RASH
COPY target/rash-0.0.1-SNAPSHOT.jar rash-app.jar
ENTRYPOINT ["java","-jar","/rash-app.jar"]
