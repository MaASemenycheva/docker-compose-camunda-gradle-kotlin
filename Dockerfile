FROM gradle:6.8.0 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon
FROM openjdk
EXPOSE 8000
RUN mkdir /app
COPY --from=build /home/gradle/src/build/libs/*.jar /app/kotlin-docker-gradle-app.jar
ENTRYPOINT ["java","-jar","/app/kotlin-docker-gradle-app.jar"]
