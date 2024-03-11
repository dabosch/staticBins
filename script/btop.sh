set -e
VERSION="v1.3.2"
URL="https://github.com/aristocratos/btop"

git clone --depth 1 --branch "${VERSION}" "${URL}"

cd "btop"

make GPU_SUPPORT=false STATIC=true

upx ./bin/btop
mv ./bin/btop ../bin/
