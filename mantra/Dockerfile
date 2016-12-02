FROM ubuntu:xenial

ENV MANTRA_VERSION 0.0.1

RUN apt-get update && \
    apt-get install -y apt-transport-https curl && \
    apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
    echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | tee /etc/apt/sources.list.d/docker.list && \
    apt-get update && \
    apt-get install -y docker-engine && \
    apt-get clean && \
    rm -r /var/lib/apt/lists/* && \
    curl -o /usr/local/bin/mantra -L https://github.com/pugnascotia/mantra/releases/download/${MANTRA_VERSION}/mantra && \
    chmod +x /usr/local/bin/mantra && \
    mkdir /work

WORKDIR /work

ENTRYPOINT ["/usr/local/bin/mantra"]
