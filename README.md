# Hello World Docker Multi-Arch

## How does it work?
### Compile images
First we need to compile the images
We can use the batch file ```build.bat```

or execute the following commands
```sh
docker build -f arm.dockerfile -t docker-registry.wayproyect.com/hw-docker:arm.
docker build -f amd64.dockerfile -t docker-registry.wayproyect.com/hw-docker:amd64.
```
### Upload the images
After compiling you have to upload the images to docker-registry
Running

```sh
docker push docker-registry.wayproyect.com/hw-docker:arm
docker push docker-registry.wayproyect.com/hw-docker:amd64
```

### Create manifest
Once the images are in the registry you have to create the manifest file

```sh
docker manifest create
    docker-registry.wayproyect.com/hw-docker
    docker-registry.wayproyect.com/hw-docker:amd64
    docker-registry.wayproyect.com/hw-docker:arm
```
### Upload the manifest file
To finish you have to upload the file where we established the different architectures for our image

```sh
docker manifest push docker-registry.wayproyect.com/hw-docker
```

