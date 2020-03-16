# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="sukantaban1993@gmail.com"

# Add a volume pointing to /tmp
#VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

COPY /home/travis/build/sukantaa/spring-heroku-cicd/target/spring-heroku-cicd-0.0.1-SNAPSHOT-docker-info.jar /usr/app/
WORKDIR /usr/app

#ENTRYPOINT ["java", "-jar", "nasapicture-0.0.1-SNAPSHOT.war"]

# The application's jar file
#ARG JAR_FILE

# Add the application's jar to the container
#ADD ${JAR_FILE} app.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","spring-heroku-cicd-0.0.1-SNAPSHOT.jar"]
