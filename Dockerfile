FROM jenkins/jenkins:latest-jdk21

USER root

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    chromium \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir --break-system-packages \
    robotframework \
    robotframework-seleniumlibrary

USER jenkins
