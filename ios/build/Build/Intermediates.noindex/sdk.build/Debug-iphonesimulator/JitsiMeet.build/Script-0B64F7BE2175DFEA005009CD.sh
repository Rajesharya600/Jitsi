#!/bin/sh
# We need to manually do this because react-native-vecotr-icons lists fonts as resources in the Pod spec file
# so they are automatically added.

shopt -s extglob

rm -f ${TARGET_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/!(jitsi).ttf

