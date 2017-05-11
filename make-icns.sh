#/usr/bin/bash

# exit on failure
set -e
# echo commands as they are run
set -o verbose

# cd to the directory of this script
cd "$( dirname "${BASH_SOURCE[0]}" )"
THIS_DIR=`pwd`

# http://stackoverflow.com/questions/11660736/xcode-4-4-removed-icon-composer-in-developer-tools

rm -rf tellurium.iconset
mkdir -p tellurium.iconset
# rsync
rsync -av telogo6/*.png tellurium.iconset
for f in tellurium.iconset/*.png; do
  mv "$f" "${f/tellurium_/icon_}"
done
iconutil -c icns tellurium.iconset
