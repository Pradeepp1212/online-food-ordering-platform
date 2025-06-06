# Use official OpenJDK image
FROM openjdk:17-jdk-alpine

# Create app directory inside container
WORKDIR /app

# Copy the JAR file into the container
COPY target/SpiceAndSprout-0.0.1-SNAPSHOT.jar app.jar

# Expose the port Spring Boot runs on
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
