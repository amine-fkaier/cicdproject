FROM openjdk:11-jdk-slim
EXPOSE 8080
ADD target/cicdproject-0.0.1-SNAPSHOT.jar cicdproject-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/cicdproject-0.0.1-SNAPSHOT.jar" ]