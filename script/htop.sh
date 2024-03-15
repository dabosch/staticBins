set -e
VERSION="3.3.0"
URL="https://github.com/htop-dev/htop"

git clone --depth 1 --branch "${VERSION}" "${URL}"

cd "htop"

./autogen.sh
./configure --enable-static
make -j4
strip ./htop
upx ./htop
mv ./htop ../bin/
