FROM ubuntu

RUN apt update
RUN apt install -y openjdk-17-jdk

RUN apt install -y maven

WORKDIR /app

COPY target/docker-demo-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]