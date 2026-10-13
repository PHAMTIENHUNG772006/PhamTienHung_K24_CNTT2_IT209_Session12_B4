FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# Sửa từ target/ thành build/libs/ cho Gradle
COPY build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]