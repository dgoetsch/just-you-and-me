FROM openjdk:11.0.4-jdk-stretch AS build
WORKDIR /api/
COPY build.gradle.kts gradlew /api/
ADD gradle /api/gradle
RUN ./gradlew --no-daemon dependencies
ADD src /api/src
RUN ./gradlew --no-daemon build

FROM openjdk:11.0.4-jre-stretch
VOLUME /tmp
COPY --from=build /api/build/libs/api-*.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]