FROM --platform=linux/amd64 openjdk:17-jdk-slim
WORKDIR /app
COPY target/spring-petclinic-3.3.0-SNAPSHOT.jar /app/spring-petclinic.jar
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh
CMD [ "/app/run.sh" ]