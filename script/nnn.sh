set -e
VERSION="v4.9"
URL="https://github.com/jarun/nnn"

git clone --depth 1 --branch "${VERSION}" "${URL}"

cd "nnn"

make O_STATIC=true
strip ./nnn
upx ./nnn
mv ./nnn ../bin/
