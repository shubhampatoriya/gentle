#!/bin/bash

set -e

VERSION="0.03"
filename="kaldi-models-$VERSION.zip"
echo $filename
download_models() {
	local version="$1"
	local filename=$filename
	local url="https://lowerquality.com/gentle/$filename"
	curl -O $filename $url --insecure
	unzip $filename
	# rm $filename
}

echo "Downloading models for v$VERSION..." 1>&2
download_models $VERSION
