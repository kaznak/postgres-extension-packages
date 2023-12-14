
set -vxeu

cd repository/extension
cargo pgrx install --release
cargo run --manifest-path ../tools/post-install/Cargo.toml -- pg_config
