set -e
VERSION="v0.25.1"
URL="https://github.com/extrawurst/gitui.git"

git clone --depth 1 --branch "${VERSION}" "${URL}"
cd "gitui"

rustup default stable
rustup target add x86_64-unknown-linux-musl

GITUI_RELEASE=1 cargo build --release --target=x86_64-unknown-linux-musl
strip "target/x86_64-unknown-linux-musl/release/gitui"
upx "target/x86_64-unknown-linux-musl/release/gitui"
mv "target/x86_64-unknown-linux-musl/release/gitui" ../bin/
