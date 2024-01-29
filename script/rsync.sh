set -e
VERSION="3.2.7"
URL="https://github.com/WayneD/rsync/archive/refs/tags/v${VERSION}.tar.gz"

mkdir -p ./temp
pushd ./temp
wget "$URL"
tar -xzf "v${VERSION}.tar.gz"

cd "rsync-${VERSION}"

./configure --enable-static
make LDFLAGS=-static
upx ./rsync
mv ./rsync ../../bin/
popd
rm -rf ./temp
