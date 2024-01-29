set -e
VERSION="2.1.1"
URL="https://gitlab.com/OldManProgrammer/unix-tree/-/archive/2.1.1/unix-tree-${VERSION}.tar.gz"
mkdir -p ./temp
pushd ./temp
wget "$URL"
tar -xzf "unix-tree-${VERSION}.tar.gz"

cd "unix-tree-${VERSION}"

make LDFLAGS=-static
upx ./tree

mv ./tree ../../bin/
popd
rm -rf ./temp
