set -e
VERSION="4.9"
URL="https://github.com/jarun/nnn/releases/download/v${VERSION}/nnn-static-${VERSION}.x86_64.tar.gz"

mkdir -p ./temp
pushd ./temp
wget "$URL"
tar -xzf "nnn-static-${VERSION}.x86_64.tar.gz"

# don't use upx: nnn is already packed by the maintainer (as of version 4.9)
# upx nnn-static
mv ./nnn-static ../bin/nnn

popd
rm -rf ./temp
