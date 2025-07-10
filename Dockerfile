# Use official OpenJDK runtime as base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy jar file into the container
COPY target/hello-world-1.0-SNAPSHOT.jar app.jar

# Run the jar when container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
