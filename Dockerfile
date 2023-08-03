FROM openjdk:8
EXPOSE 8282
ADD target/Jenkins-Demo-0.0.1-SNAPSHOT.jar Jenkins-Demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/Jenkins-Demo-0.0.1-SNAPSHOT.jar"]
