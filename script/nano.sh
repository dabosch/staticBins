set -e
VERSION="7.2"
URL="https://www.nano-editor.org/dist/v7/nano-${VERSION}.tar.xz"
mkdir -p ./temp
pushd ./temp
wget "$URL"
tar -xJf "nano-${VERSION}.tar.xz"

cd "nano-${VERSION}"

./configure LDFLAGS=-static
make
upx ./src/nano
mv ./src/nano ../../bin/
popd
rm -rf ./temp
