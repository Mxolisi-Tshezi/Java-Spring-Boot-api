# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built jar from the local machine into the container
COPY build/libs/*.jar app.jar

# Expose port 8080
EXPOSE 80

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
