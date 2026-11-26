#!/bin/bash
# Reseam build
source ./src/build/utils.sh
# Download requirements
Reseam_dl(){
	dl_gh "patches" "Reseam" "latest"
	dl_gh "reseam" "Reseam" "latest"
}
1() {
	Reseam_dl
	# Patch YouTube:
	get_patches_key "youtube-reseam"
	get_apk "com.google.android.youtube" "youtube" "apk"
	patch "youtube" "reseam"
}
case "$1" in
    1)
        1
        ;;
esac
