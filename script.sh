#!/bin/bash

# Check if jq is installed
command -v jq >/dev/null 2>&1 || { echo >&2 "jq is required but not installed. Aborting."; exit 1; }

# Check if a JSON file is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <json_file>"
    exit 1
fi

json_file=$1

# Check if the file exists
if [ ! -f "$json_file" ]; then
    echo "Error: File not found - $json_file"
    exit 1
fi

# Extract key-value pairs using jq in key=value format
jq -r 'to_entries | .[] | "\(.key)=\(.value|tostring)"' "$json_file"