set -e
VERSION="v3.2.7"
URL="https://github.com/WayneD/rsync"

git clone --depth 1 --branch "${VERSION}" "${URL}"

cd rsync
CC=musl-gcc ./configure CFLAGS="-static" --disable-xxhash --disable-openssl --disable-zstd --disable-lz4
make
strip ./rsync
upx ./rsync
mv ./rsync ../bin/
