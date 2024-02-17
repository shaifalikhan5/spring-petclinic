FROM ubuntu:latest
COPY . /app
RUN mvn clean package
EXPOSE 8080
CMD ["java","-jar","/app/target/spring-petclinic-3.2.0-SNAPSHOT.jar"]
