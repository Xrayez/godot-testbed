#!/usr/bin/env bash

# For reference, see:
# https://github.com/godotengine/godot-tests/blob/master/tests/project_export/test_project.sh

# The absolute path to the Godot binary
GODOT_BIN="$(readlink -e "$1")"

# Change to the directory where the script is located,
# so it can be run from any location
cd "$(dirname "${BASH_SOURCE[0]}")"

"$GODOT_BIN" --path testbed -s addons/gut/gut_cmdln.gd
