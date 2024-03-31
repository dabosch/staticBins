set -e
VERSION="v0.24.0"
URL="https://github.com/sharkdp/bat.git"
TOOL="bat"
cd "$HOME"
git clone --depth 1 --branch "${VERSION}" "${URL}"
cd "$TOOL"

rustup default stable
rustup target add x86_64-unknown-linux-musl

#cargo build -r
cargo build --release --target=x86_64-unknown-linux-musl
strip "target/x86_64-unknown-linux-musl/release/${TOOL}"
upx "target/x86_64-unknown-linux-musl/release/${TOOL}"
mv "target/x86_64-unknown-linux-musl/release/${TOOL}" ../bin/
