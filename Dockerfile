FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

RUN chmod +x mvnw

# Skip tests to avoid surefire plugin errors
RUN ./mvnw clean install -DskipTests

CMD ["./mvnw", "spring-boot:run"]
