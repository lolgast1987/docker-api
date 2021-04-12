FROM alpine

RUN apk add --no-cache --no-progress socat

EXPOSE 2375

CMD ["socat", "TCP-LISTEN:2375,reuseaddr,fork", "UNIX-CLIENT:/var/run/docker.sock"]
