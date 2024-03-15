set -e
VERSION="2.8"
URL="https://zlib.net/pigz/pigz-${VERSION}.tar.gz"
wget "$URL"
tar -xzf "pigz-${VERSION}.tar.gz"

cd "pigz-${VERSION}"

make LDFLAGS=-static
strip ./pigz
strip ./unpigz
upx ./pigz
upx ./unpigz

mv ./pigz ../bin/
mv ./unpigz ../bin/
