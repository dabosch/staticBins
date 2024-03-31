set -e
VERSION="v0.18.9"
URL="https://github.com/eza-community/eza.git"

cd "$HOME"
git clone --depth 1 --branch "${VERSION}" "${URL}"
cd "eza"

#rustup default stable
rustup target add x86_64-unknown-linux-musl

#cargo build -r
cargo build --release --target=x86_64-unknown-linux-musl --features vendored-openssl,git
strip "target/x86_64-unknown-linux-musl/release/eza"
upx "target/x86_64-unknown-linux-musl/release/eza"
mv "target/x86_64-unknown-linux-musl/release/eza" ../bin/
