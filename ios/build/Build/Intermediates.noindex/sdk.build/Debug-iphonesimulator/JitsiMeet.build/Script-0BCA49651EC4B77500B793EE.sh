#!/bin/sh
if [[ "$CONFIGURATION" == *Debug* && ! "$PLATFORM_NAME" == *simulator ]]; then
    IP=$(ipconfig getifaddr en0)
    if [ -z "$IP" ]; then
        IP=$(ifconfig | grep 'inet ' | grep -v ' 127.' | cut -d\   -f2  | awk 'NR==1{print $1}')
    fi
    DEST=$CONFIGURATION_BUILD_DIR/$UNLOCALIZED_RESOURCES_FOLDER_PATH
    echo "$IP" > "$DEST/ip.txt"
    exit 0
fi
export NODE_BINARY=node
../../node_modules/react-native/scripts/react-native-xcode.sh
