set -e
VERSION="1.8.5"
URL="https://github.com/aristocratos/btop.git"

mkdir -p ./temp
pushd ./temp
git clone "$URL"
#tar -xzf "pv-${VERSION}.tar.gz"

cd "btop"

make GPU_SUPPORT=false STATIC=true

upx ./bin/btop
mv ./bin/btop ../../bin/
popd
rm -rf ./temp
