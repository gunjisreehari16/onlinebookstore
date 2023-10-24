FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/onlinebookstore* $PROJECT_HOME/onlinebookstore*

WORKDIR $PROJECT_HOME
EXPOSE 8082
CMD ["java" ,"-jar","./onlinebookstore*"]
