#!/bin/bash

SERVER_NAME="192.168.1.11"
SERVER_PATH="/mnt/nas"
LOCAL_PATH="/mnt/nas"

LN_DIR="${HOME}/nas"

if [ $UID -eq 0 ]; then
    echo "Do not run as root!"
    exit 1
fi

sudo mkdir -p $LOCAL_PATH

if sudo mount "${SERVER_NAME}":"${SERVER_PATH}" "${LOCAL_PATH}"; then
    echo "Mounted to:" "${LOCAL_PATH}"

    rm -rf $LN_DIR
    ln -s $LOCAL_PATH $LN_DIR

    exit 0
else
    echo "Failed to mount" "${SERVER_NAME}":"${SERVER_PATH}"
    exit 1
fi
