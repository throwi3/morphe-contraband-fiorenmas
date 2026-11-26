#!/bin/bash
source ./src/build/utils.sh
#################################################
# Download requirements
dl_gh "morphe-desktop" "MorpheApp" "latest"
dl_gh "Hushtumblr" "SysAdminDoc" "latest"
#################################################
# Patch Tumblr:
get_patches_key "HushTumblr"
get_apk "com.tumblr" "tumblr" "bundle"
patch "tumblr" "hushTumblr"
