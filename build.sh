#!/bin/bash

shopt -s nullglob
set -ex

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

