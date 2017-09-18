pwd
cd _build/src/github.com/garycarr/$1
DOCKER_TAG=${BUILD_NUMBER:=latest}
docker build -t turnitin/seu-nos:${DOCKER_TAG} .
# Make sure the container tests pass
docker run -it turnitin/seu-nos:${DOCKER_TAG} go test
# Push the image to gcloud and retag
