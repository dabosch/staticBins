set -e
VERSION="1.3.0"
URL="https://github.com/aristocratos/btop/archive/refs/tags/v${VERSION}.tar.gz"

mkdir -p ./temp
pushd ./temp
wget "$URL"
tar -xzf "v${VERSION}.tar.gz"

cd "btop-${VERSION}"

make GPU_SUPPORT=false STATIC=true

upx ./bin/btop
mv ./bin/btop ../../bin/
popd
rm -rf ./temp
