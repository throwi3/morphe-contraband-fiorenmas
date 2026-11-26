#!/bin/bash
source ./src/build/utils.sh
#################################################
# Download requirements
dl_gh "morphe-desktop" "MorpheApp" "latest"
dl_gh "HushTumblr" "SysAdminDoc" "latest"
#################################################
# Patch Tumblr:
get_patches_key "HushTumblr"
get_apk "com.tumblr" "tumblr-arm64-v8a" "bundle" "arm64-v8a" "480dpi" "Android 11+"
patch "tumblr-arm64-v8a" "hushTumblr"
