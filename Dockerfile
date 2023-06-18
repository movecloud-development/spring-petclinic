FROM maven:3.8.4-openjdk-17

WORKDIR /usr/src/app

COPY . /usr/src/app
RUN mvn package

ENV PORT 5000
EXPOSE $PORT
CMD [ "sh", "-c", "mvn -Dspring-boot.run.arguments=--server.port=${PORT} spring-boot:run" ]
