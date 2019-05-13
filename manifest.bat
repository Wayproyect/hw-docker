docker manifest create ^
    docker-registry.wayproyect.com/hw-docker ^
    docker-registry.wayproyect.com/hw-docker:amd64 ^
    docker-registry.wayproyect.com/hw-docker:arm

echo .

docker manifest inspect docker-registry.wayproyect.com/hw-docker