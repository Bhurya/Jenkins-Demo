FROM openjdk:8
EXPOSE 8282
COPY target/jenkins-demo-0.0.1-SNAPSHOT.jar /app/jenkins-demo-0.0.1-SNAPSHOT.jar
WORKDIR /app
ENTRYPOINT ["java","-jar","jenkins-demo-0.0.1-SNAPSHOT.jar"]
