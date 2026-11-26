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
	# Remove unused architectures
	for i in {0..3}; do
		split_arch "youtube" "reseam"
	done
	# Patch YouTube Music:
	# Arm64-v8a
	get_patches_key "youtube-music-reseam"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-arm64-v8a" "apk" "arm64-v8a"
	patch "youtube-music-arm64-v8a" "reseam"
}
case "$1" in
    1)
        1
        ;;
esac
