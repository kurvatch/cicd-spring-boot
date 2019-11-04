# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="klchetan@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 5500

# The application's jar file
ARG JAR_FILE=target/cicd-spring-boot-0.0.1-SNAPSHOT.jar

# List the files within in the cloud infra
RUN ls -lart

# Add the application's jar to the container
ADD ${JAR_FILE} cicd-spring-boot-0.0.1-SNAPSHOT.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/cicd-spring-boot-0.0.1-SNAPSHOT.jar"]
