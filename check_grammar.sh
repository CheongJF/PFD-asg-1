#!/bin/bash

# Check if LanguageTool is installed
if ! command -v languagetool &> /dev/null; then
    echo "LanguageTool is not installed. Please install it and try again."
    exit 1
fi

# Check if the input file is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Input file not found: $input_file"
    exit 1
fi

# Run LanguageTool to check grammar
languagetool -l en-US "$input_file"
