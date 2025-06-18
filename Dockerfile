FROM openjdk:17-jdk-slim

WORKDIR /opt/traccar

RUN apt-get update && apt-get install -y wget unzip && \
    wget https://github.com/traccar/traccar/releases/download/v5.12/traccar-linux-5.12.zip && \
    unzip traccar-linux-5.12.zip && \
    rm traccar-linux-5.12.zip

EXPOSE 8082 5000-5150

CMD ["./traccar/bin/traccar.run"]
