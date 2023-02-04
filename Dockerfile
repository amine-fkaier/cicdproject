FROM openjdk:11-jdk-slim
EXPOSE 8080
ADD target/cicdproject.jar cicdproject.jar
ENTRYPOINT ["java","-jar","/cicdproject.jar" ]