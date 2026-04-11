#!/usr/bin/env bash

# Exit on error, undefined vars, and pipeline failures
set -euo pipefail

opt_dir="$HOME/opt"
petar_dir="$opt_dir/petar"
galpy_dir="$opt_dir/galpy/galpy"

rm -rf "$petar_dir"
mkdir -p "$petar_dir"

make clean

# For Pop3 cluster
./configure \
    --prefix="$petar_dir" \
    --with-mpi=no \
    --with-interrupt=bseEmp \
    --with-external=galpy \
    --with-galpy-prefix="$galpy_dir"

# For globular cluster
# ./configure \
#     --prefix="$petar_dir" \
#     --with-mpi=no \
#     --enable-cuda \
#     --with-interrupt=bse \
#     --with-debug=assert
