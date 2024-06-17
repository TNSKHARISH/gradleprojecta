# Use OpenJDK 17 as the base image
FROM adoptopenjdk:17-jdk-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the Gradle build files
COPY build.gradle settings.gradle gradlew /app/

# Copy the gradle wrapper folder and make it executable
COPY gradle /app/gradle
RUN chmod +x /app/gradlew

# Copy the source code
COPY src /app/src

# Build the application with Gradle
RUN ./gradlew build

# Expose the port if your application listens on a specific port
# EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "build/libs/gradle-project-a.jar"]
