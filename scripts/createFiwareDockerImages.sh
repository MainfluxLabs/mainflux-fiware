FIWARE_DIR=/opt/fiware
FIWARE_DOCKER_DIR=$FIWARE_DIR/fiware-docker
sudo mkdir -p $FIWARE_DOCKER_DIR
sudo chown ${USER} $FIWARE_DOCKER_DIR

FIWARE_SRC_DIR=$FIWARE_DIR/fiware-src

###
# Orion
###
cd $FIWARE_SRC_DIR/fiware-orion/docker
docker build -t mainflux/orion -f Dockerfile
cd -


