# Docker-in-Docker Image Build demo 


### Docker-in-Docker ###
- Docker daemon inside a Container
- Requires Special privileges , because daemon runs as root
- May be the only place where -privileged flag should be used


### Where to use ###

Best case is to use for CICD pipelines

### Use with Caution ###

This can introduce security risks if there are misconfigurations


### How to Build and Run ### 


```
docker build -t dind-nodejs-builder -f Dockerfile.dind .
docker run --privileged -v /var/run/docker.sock:/var/run/docker.sock dind-nodejs-builder

```

