#!/bin/bash

IOTA_HOST=http://localhost:4041
SERVICE_PATH=/mqtt

curl $IOTA_HOST/iot/devices -s -S \
    --header 'Content-Type: application/json' \
    --header 'Accept: application/json' \
    --header 'Fiware-Service: mainflux' \
    --header "Fiware-ServicePath: $SERVICE_PATH" \
    -d @devices.json | python -mjson.tool
