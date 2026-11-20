#!/usr/bin/env bash
set -euo pipefail

patch_file() {
    local file="$1"
    local line="$2"
    if [ -f "$file" ]; then
        sed -i "${line}s|include \$(DEVKITPRO)/libnx/switch_rules|include \$(DEVKITPRO)/libounce/switch2_rules|" "$file"
    fi
}

patch_file "Libraries/FsLib/Switch/FsLib/Makefile" "9"
patch_file "Libraries/SDLLib/SDL/Makefile" "9"
