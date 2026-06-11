#!/usr/bin/env bash
# shellcheck disable=SC2059

function group_by_filecount() {
    local source_dir="$1"
    local dest_dir="$2"
    local segment_size="${3:-1000}"
    local padding="${4:-4}"

    [[ -z "$source_dir" || -z "$dest_dir" ]] && return 1

    mkdir -p "$dest_dir"

    local padding_key="%0${padding}d"
    local count=0
    for f in "$source_dir"/*; do
        local segment
        local count_padded
        local segment_padded
        local filename
        local filename_padded
        local f_new

        segment="$(( count / segment_size ))"
        
        count_padded="$(printf "$padding_key" "$count")"
        segment_padded="$(printf "$padding_key" "$segment")"

        filename="$(basename "$f")"
        filename_padded="$count_padded.$filename"

        f_new="$dest_dir/$segment_padded/$filename_padded"
        
        mkdir -p "$dest_dir/$segment_padded/"
        cp "$f" "$f_new"

        printf '%s\t%s\t%s\n' "$count" "$segment_padded" "$f_new"
        ((count++))
    done
}

[[ "${BASH_SOURCE[0]}" == "$0" ]] && group_by_filecount "$@"