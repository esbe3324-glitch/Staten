FROM openjdk:17-jdk-alpine

WORKDIR /minecraft
ENV MINECRAFT_VERSION=1.20.2
ENV MEMORY=1024M

RUN apk add --no-cache curl

RUN curl -o server.jar https://launcher.mojang.com/v1/objects/0efc67.../server.jar

Run echo "eula=true" > eula.txt

CMD ["java", "-Xmx${MEMORY}", "-Xms${MEMORY}", "-jar", "server-jar", "nogui"]
