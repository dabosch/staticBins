set -e
VERSION="0.47.0"
URL="https://github.com/junegunn/fzf.git"

git clone --depth 1 --branch "${VERSION}" "${URL}"

cd fzf
make bin/fzf
strip ./bin/fzf
upx ./bin/fzf

cp ./bin/fzf ../bin/fzf
