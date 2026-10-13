# Sử dụng OpenJDK làm môi trường chạy
FROM openjdk:17-jdk-slim

# Thiết lập thư mục làm việc bên trong container
WORKDIR /app

# Copy file jar của ứng dụng vào container (đường dẫn target/ tùy thuộc vào kết quả build maven của bạn)
COPY target/*.jar app.jar

# Khai báo cổng ứng dụng lắng nghe
EXPOSE 8080

# Lệnh chạy ứng dụng
ENTRYPOINT ["java", "-jar", "app.jar"]