#!/bin/bash

docker run -it --rm \
    --mount type=bind,src=$(pwd)/data,dst=/data \
    -e SYNAPSE_SERVER_NAME=matrix.matsu.fi \
    -e SYNAPSE_REPORT_STATS=yes \
    matrixdotorg/synapse:latest generate

#sudo chown -R $(whoami):$(whoami) data
