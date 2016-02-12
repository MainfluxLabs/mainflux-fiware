FIWARE_DIR=/opt/fiware
FIWARE_SRC_DIR=$FIWARE_DIR/fiware-src
sudo mkdir -p $FIWARE_SRC_DIR
sudo chown ${USER} $FIWARE_SRC_DIR

# Repos
ORION_REPO=https://github.com/telefonicaid/fiware-orion.git
IOTA_MQTT_REPO=https://github.com/telefonicaid/iotagent-mqtt.git
IOTA_LWM2M_REPO=https://github.com/telefonicaid/lightweightm2m-iotagent.git

###
# gitGet()
###
gitGet() {
    cd $FIWARE_SRC_DIR
    
    TMP=`basename $1`
    REPO=${TMP%.git}
    if [ -d $REPO ]; then
        cd $REPO
        git pull
        cd ..
    else
        git clone $1
    fi
    
    cd -
}

###
# Orion
###
gitGet $ORION_REPO

###
# IoT Agent MQTT
###
gitGet $IOTA_MQTT_REPO

###
# IoT Agent LWM2M
###
gitGet $IOTA_LWM2M_REPO




