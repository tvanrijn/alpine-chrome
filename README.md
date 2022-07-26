# alpine-chrome
Chrome headless docker images

## update instructions

1. navigate to folder with Dockerfile
1. update the Dockerfile contents if needed
1. update the tagname below if needed
1. run these commands to create a multi-arch image:

```
docker login

docker buildx create --use

docker buildx build --platform=linux/amd64,linux/arm64 --push -t vanrijn/alpine-chrome:102-with-node-14 .

docker buildx build --platform=linux/amd64,linux/arm64 --push -t vanrijn/alpine-chrome:latest .
```