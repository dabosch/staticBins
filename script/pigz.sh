set -e
VERSION="2.8"
URL="https://zlib.net/pigz/pigz-${VERSION}.tar.gz"
mkdir -p ./temp
pushd ./temp
wget "$URL"
tar -xzf "pigz-${VERSION}.tar.gz"

cd "pigz-${VERSION}"

make LDFLAGS=-static
upx ./pigz
upx ./unpigz

mv ./pigz ../../bin/
mv ./unpigz ../../bin/
popd
rm -rf ./temp
