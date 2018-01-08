FROM docker

RUN apk update && \
	apk add curl bash && \
	curl -L --insecure https://github.com/odise/go-cron/releases/download/v0.0.7/go-cron-linux.gz | zcat > /usr/local/bin/go-cron && \
	chmod u+x /usr/local/bin/go-cron && \
	apk del curl && \
	rm -rf /var/cache/apk/*

ENTRYPOINT ["go-cron"]
