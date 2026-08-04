FROM gradle:8.14.3-jdk21 AS build
WORKDIR /app
COPY . .
RUN gradle build --no-daemon

FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY --from=build /app/build/libs/*.jar /app/notificacao.jar
EXPOSE 8081
CMD ["java", "-jar", "/app/notificacao.jar"]