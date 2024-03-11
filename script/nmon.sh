set -e
VERSION="16p"
cp -r "./code/nmon${VERSION}" ./

cd "nmon${VERSION}"

gcc -o nmon ./lmon16p.c -O3 -static -lm -lncurses -ltinfo
upx ./nmon
mv ./nmon ../bin/
