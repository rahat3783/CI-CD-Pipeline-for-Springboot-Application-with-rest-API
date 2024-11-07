FROM openjdk:17-jdk
ADD target/springboot-rest-api-0.0.1-SNAPSHOT.jar springboot-rest-api-0.0.1-SNAPSHOT.jar

EXPOSE 8081
ENTRYPOINT [ "java","-jar","/springboot-rest-api-0.0.1-SNAPSHOT.jar" ]
