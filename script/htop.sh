set -e
VERSION="3.3.0"
URL="https://github.com/htop-dev/htop/releases/download/${VERSION}/htop-${VERSION}.tar.xz"

mkdir -p ./temp
pushd ./temp
wget "$URL"
tar -xJf "htop-${VERSION}.tar.xz"

cd "htop-${VERSION}"

./configure --enable-static
make -j4
upx ./htop
mv ./htop ../../bin/
popd
rm -rf ./temp
