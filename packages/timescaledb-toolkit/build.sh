
set -vxeu

cd repository/extension
# cargo pgrx install --release
# cargo run --manifest-path ../tools/post-install/Cargo.toml -- pg_config

cargo pgrx package
# target/release/timescaledb_toolkit-pg16/usr/share/postgresql/16/extension/timescaledb_toolkit.control
# target/release/timescaledb_toolkit-pg16/usr/lib/postgresql/16/lib/timescaledb_toolkit.so
# target/release/timescaledb_toolkit-pg16/usr/share/postgresql/16/extension/timescaledb_toolkit--1.18.0.sql
cargo build --release --manifest-path ../tools/post-install/Cargo.toml
# target/release/post-install
