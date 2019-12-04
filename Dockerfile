FROM openjdk:8-jre-alpine
EXPOSE 8761
ARG JAR_FILE=target/discovery-service.jar
ADD ${JAR_FILE} discovery-service.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/discovery-service.jar"]