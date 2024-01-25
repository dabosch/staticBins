set -e
VERSION="2.3"
URL="https://dev.yorhel.nl/download/ncdu-${VERSION}-linux-x86_64.tar.gz"

mkdir -p ./temp
pushd ./temp
wget "$URL"
tar -xzf "ncdu-${VERSION}-linux-x86_64.tar.gz"

upx ./ncdu
mv ./ncdu ../bin/

popd
rm -rf ./temp
