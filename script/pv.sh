set -e
VERSION="1.8.5"
URL="http://www.ivarch.com/programs/sources/pv-${VERSION}.tar.gz"

wget "$URL"
tar -xzf "pv-${VERSION}.tar.gz"

cd "pv-${VERSION}"

./configure --enable-static
make
upx ./pv
mv ./pv ../bin/
