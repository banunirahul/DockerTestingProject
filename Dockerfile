# Stage 1: Build the application
FROM openjdk:17-jdk-slim AS build

WORKDIR /app

# Copy the source code
COPY src/main/java/DemoApplication.java /app/DemoApplication.java

# Compile the Java code
RUN javac DemoApplication.java

# Stage 2: Create a minimal runtime environment
FROM gcr.io/distroless/java17-debian11:nonroot

WORKDIR /app

# Copy the compiled class file from the build stage
COPY --from=build /app/DemoApplication.class /app/DemoApplication.class

# Command to run the application
CMD ["java","DemoApplication"]
