#!/bin/bash

# Install dependencies
apt-get update
apt-get install -yy libgsl-dev

# Fail on errors
set -e

# Don't fail on empty directories
shopt -s nullglob

# Tell me what's happening
set -x

for dir in *; do
    if [ -d "${dir}" ]; then
        cd "${dir}"
        for file in *.tex; do
            if [ -f "${file}" ]; then
                context --nonstopmode "${file}"
            fi
        done
        cd -
    fi
done

