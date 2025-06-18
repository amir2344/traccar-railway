FROM openjdk:17-jdk

WORKDIR /opt

# Unduh dan ekstrak Traccar
RUN apt-get update && apt-get install -y wget unzip && \
    wget https://github.com/traccar/traccar/releases/download/v5.13/traccar-other-5.13.zip && \
    unzip traccar-other-5.13.zip && \
    rm traccar-other-5.13.zip

# Buka port default Traccar
EXPOSE 8082 5000-5150/udp

# Jalankan Traccar
CMD ["/opt/bin/traccar"]
