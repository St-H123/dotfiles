#!/bin/sh

# Get the directory of the current script
current_script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Use stow to manage symbolic links
stow --dir="$current_script_path" --target="$HOME" .
