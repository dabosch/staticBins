set -e
VERSION="14.1.0"
URL="https://github.com/BurntSushi/ripgrep.git"
TOOL="rg"
cd "$HOME"
git clone --depth 1 --branch "${VERSION}" "${URL}"
cd "ripgrep"

rustup default stable
rustup target add x86_64-unknown-linux-musl

#cargo build -r
cargo build --release --target=x86_64-unknown-linux-musl
strip "target/x86_64-unknown-linux-musl/release/${TOOL}"
upx "target/x86_64-unknown-linux-musl/release/${TOOL}"
mv "target/x86_64-unknown-linux-musl/release/${TOOL}" ../bin/
