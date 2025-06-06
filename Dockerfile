# Use official OpenJDK image
FROM openjdk:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy entire project
COPY . .

# Build the project
RUN ./mvnw clean package -DskipTests

# Rename and move the jar
RUN mv target/*.jar app.jar

# Expose the Spring Boot port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
