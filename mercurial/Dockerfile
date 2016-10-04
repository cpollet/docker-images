FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends mercurial && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME /usr/local/mercurial-ext

CMD [ "hg", "version" ]
