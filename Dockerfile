FROM alpine:3.13.5

RUN apk add --no-cache --no-progress socat

EXPOSE 2375

HEALTHCHECK --interval=30s --timeout=15s --start-period=3s \
	CMD ["wget", "--spider", "http://localhost:2375/containers/json"]

CMD ["socat", "TCP-LISTEN:2375,reuseaddr,fork", "UNIX-CLIENT:/var/run/docker.sock"]
