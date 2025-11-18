# Use a lightweight base image with Java 17 (or change to 11/21 as needed)
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside the container
WORKDIR /app

# Copy the built artifact from the target directory to the container
# Ensure your maven build creates a jar file (usually in 'target/')
COPY target/*.jar aws-demo.jar

# Expose the port your Spring Boot app runs on (default 8080)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "aws-demo.jar"]