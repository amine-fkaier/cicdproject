FROM openjdk:11-jdk-slim
EXPOSE 8080
ARG APP_NAME="cicdproject"
ARG APP_VERSION="0.0.1"
ARG JAR_FILE="/target/${APP_NAME}-${APP_VERSION}-SNAPSHOT.jar"
WORKDIR /
COPY target/cicdproject-0.0.1-SNAPSHOT.jar cicdproject-0.0.1-SNAPSHOT.jar
ENTRYPOINT [ "java", "-jar", "/cicdproject-0.0.1-SNAPSHOT.jar" ]