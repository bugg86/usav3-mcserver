FROM --platform=linux/amd64 eclipse-temurin:21.0.7_6-jre

EXPOSE 25565
EXPOSE 24454/udp

RUN mkdir /server

WORKDIR /server

COPY ./server ./

ENTRYPOINT sh start.sh