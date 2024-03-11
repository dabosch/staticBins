set -e
VERSION="2.1.1"
URL="https://gitlab.com/OldManProgrammer/unix-tree"

git clone --depth 1 --branch "${VERSION}" "${URL}"
cd "unix-tree"

make LDFLAGS=-static
upx ./tree

mv ./tree ../bin/
