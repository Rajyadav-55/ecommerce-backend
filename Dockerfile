# Use official Java 17 image
FROM eclipse-temurin:17-jdk

# Set working directory inside the container
WORKDIR /app

# Copy all files into the container
COPY . /app

# Build the Spring Boot app
RUN ./mvnw clean install

# Run the app
CMD ["./mvnw", "spring-boot:run"]
