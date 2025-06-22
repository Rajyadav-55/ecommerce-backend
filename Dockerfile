FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . /app

# Fix permissions manually inside the container
RUN chmod +x mvnw

RUN ./mvnw clean install

CMD ["./mvnw", "spring-boot:run"]
