#!/bin/bash
# ARCH LINUX ONLY
echo "Install the following arch linux packages: wlx-overlay-s-git"

# Download lovr
url=`curl -q https://api.github.com/repos/bjornbytes/lovr/releases/latest|grep AppImage|grep browser_download_url|cut -d: -f2-|xargs `
fname='lovr.AppImage'
wget -qO $fname $url
chmod +x lovr.AppImage

# Point lovr-playspace to our custom config
rm -rf lovr-playspace/config
ln -s ../lovr-playspace-config lovr-playspace/config

