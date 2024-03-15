set -e
VERSION="7.2"
URL="https://www.nano-editor.org/dist/v7/nano-${VERSION}.tar.xz"

wget "$URL"
tar -xJf "nano-${VERSION}.tar.xz"

cd "nano-${VERSION}"

./configure LDFLAGS=-static
make
strip ./src/nano
upx ./src/nano
mv ./src/nano ../bin/
