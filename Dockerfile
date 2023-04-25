FROM alpine:3.14
RUN  apk update \
  && apk upgrade \
  && apk add --update openjdk11 tzdata curl unzip bash \
  && rm -rf /var/cache/apk/*
MAINTAINER RASH
COPY target/rash-0.0.1-SNAPSHOT.jar rash-app.jar
ENTRYPOINT ["java","-jar","/rash-app.jar"]
