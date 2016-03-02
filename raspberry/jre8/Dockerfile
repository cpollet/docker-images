# Inspired by java:8-jre

FROM resin/rpi-raspbian:jessie

ENV LANG C.UTF-8
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-armhf/jre
ENV JAVA_VERSION 8u40
ENV JAVA_DEBIAN_VERSION 8u40~b04-2

RUN { \
		echo '#!/bin/bash'; \
		echo 'set -e'; \
		echo; \
		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; \
	} > /usr/local/bin/docker-java-home && \
	chmod +x /usr/local/bin/docker-java-home

RUN set -x && \
    apt-get update && \
    apt-get install -y openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" && \
    rm -rf /var/lib/apt/lists/* && \
    [ "$JAVA_HOME" = "$(docker-java-home)" ]

