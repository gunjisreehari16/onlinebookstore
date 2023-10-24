FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/onlinebookstore.jar $PROJECT_HOME/onlinebookstore.jar

WORKDIR $PROJECT_HOME
EXPOSE 8082
CMD ["java" ,"-jar","./onlinebookstore.jar"]
