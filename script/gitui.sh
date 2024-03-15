set -e
VERSION="v0.25.1"
URL="https://github.com/extrawurst/gitui/releases/download/${VERSION}/gitui-linux-musl.tar.gz"

wget "$URL"
tar -xzf "gitui-linux-musl.tar.gz"

upx ./gitui
#touch ./gitui
mv ./gitui ./bin/
