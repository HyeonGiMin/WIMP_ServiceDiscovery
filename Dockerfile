# Docker file
FROM openjdk:17.0.1-slim
ARG JAR_FILE=./build/libs/*-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8761


ENV JAVA_HOME=/usr/local/openjdk-17
ENV PATH=/usr/local/openjdk-17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV LANG=C.UTF-8
ENV JAVA_VERSION=17.0.1
ENV TZ Asia/Seoul

COPY ./startService.sh startService.sh
ENTRYPOINT ["/bin/bash","./startService.sh"]
