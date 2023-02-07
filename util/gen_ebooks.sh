#!/usr/bin/env bash

IN_DIR="out"
OUT_DIR="out_ebooks"
EXT="epub"

mkdir -p "$OUT_DIR"

for story in "$IN_DIR"/*; do
    filename="$(basename -- "$story")"
    new_file="$OUT_DIR/${filename%.*}.$EXT"

    [[ -f "$new_file" ]] && continue

    pandoc -f markdown-yaml_metadata_block -t "$EXT" -o "$new_file" "$story"
done