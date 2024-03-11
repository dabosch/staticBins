set -e
VERSION="2.3"
URL="https://dev.yorhel.nl/download/ncdu-${VERSION}-linux-x86_64.tar.gz"

wget "$URL"
tar -xzf "ncdu-${VERSION}-linux-x86_64.tar.gz"

upx ./ncdu
touch ./ncdu
mv ./ncdu ./bin/
