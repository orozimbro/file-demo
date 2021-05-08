FROM adoptopenjdk/openjdk11:x86_64-alpine-jre11u-nightly
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
COPY target/*.jar app.jar 
ENTRYPOINT ["java","-jar","/app.jar"]