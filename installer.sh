#!/usr/bin/env bash

## Clone the repo
git clone https://github.com/idnan/github-pr.git --depth=1 || { echo >&2 "Clone failed with $?"; exit 1; }
cd github-pr
make install || { echo >&2 "Clone failed with $?"; exit 1; }
cd ..
rm -rf github-pr