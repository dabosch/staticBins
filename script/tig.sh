set -e
VERSION="tig-2.5.8"
URL="https://github.com/jonas/tig.git"

git clone --depth 1 --branch "${VERSION}" "${URL}"
cd "tig"

make configure
./configure LDFLAGS=-static
make
upx ./src/tig

mv ./src/tig ../bin/
