FROM openjdk:8
EXPOSE 8282
ADD target/jenkins-demo-0.0.1-SNAPSHOT.jar jenkins-demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/jenkins-demo-0.0.1-SNAPSHOT.jar"]
