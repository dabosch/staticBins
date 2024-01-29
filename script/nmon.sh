set -e
VERSION="16p"
mkdir -p ./temp
pushd ./temp
cp -r "../code/nmon${VERSION}" ./

cd "nmon${VERSION}"

gcc -o nmon ./lmon16p.c -O3 -static -lm -lncurses -ltinfo
upx ./nmon
mv ./nmon ../../bin/
popd
rm -rf ./temp
