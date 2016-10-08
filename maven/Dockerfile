FROM maven:3-jdk-8

COPY mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh

# user and group is to create, should match host's user and group.
ARG USER=1000
ARG GROUP=1000

# override maven:3-jdk-8 as we create a specific user for maven
ENV MAVEN_CONFIG "/build/.m2"

RUN chmod a+x /usr/local/bin/entrypoint.sh && \
    echo build:x:${USER}:${GROUP}::/build:/bin/bash >> /etc/passwd && \
    echo build:x:${GROUP}: >> /etc/group && \
    mkdir -p /build/{.m2,sources}

VOLUME /build/.m2
VOLUME /build/sources

WORKDIR /build/sources
