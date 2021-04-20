Makes the Docker API available via port 2375 without altering files on your host.

**Baseimage:** alpine:3.13.5

Start with: ```docker run -d -p 2375:2375 -v /var/run/docker.sock:/var/run/docker.sock lolgast/docker-api```
