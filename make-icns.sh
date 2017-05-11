#/usr/bin/bash

# exit on failure
set -e
# echo commands as they are run
set -o verbose

# cd to the directory of this script
cd "$( dirname "${BASH_SOURCE[0]}" )"
THIS_DIR=`pwd`

mkdir -p tellurium.iconset
rsync -av telogo6/*.png tellurium.iconset
iconutil -c icons tellurium.iconset