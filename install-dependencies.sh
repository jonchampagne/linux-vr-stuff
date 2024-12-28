#!/bin/bash
# ARCH LINUX ONLY
echo "Install the following arch linux packages: wlx-overlay-s-git"

# Download lovr
#url=`curl -q https://api.github.com/repos/bjornbytes/lovr/releases/latest|grep AppImage|grep browser_download_url|cut -d: -f2-|xargs `
#fname='lovr.AppImage'
#wget -qO $fname $url
#chmod +x lovr.AppImage

echo "Download the latest lovr appimage from the dev branch from the following link, and save it in this directory as lovr.AppImage"
echo "https://github.com/bjornbytes/lovr/actions/workflows/build.yml"

git submodule update --init --recursive

# Point lovr-playspace to our custom config
rm -vrf lovr-playspace/config
ln -vs ../lovr-playspace-config lovr-playspace/config

