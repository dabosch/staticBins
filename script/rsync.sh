set -e
VERSION="v3.2.7"
URL="https://github.com/WayneD/rsync"

git clone --depth 1 --branch "${VERSION}" "${URL}"

cd rsync
./configure --enable-static
make LDFLAGS=-static
strip ./rsync
upx ./rsync
mv ./rsync ../bin/
