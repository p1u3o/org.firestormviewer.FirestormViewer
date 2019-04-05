#!/bin/bash

# Launch URL in default browser using xdg-open

URL="$1"

if [ -z "$URL" ]; then
    echo "Usage: $(basename "$0") URL"
    exit
fi

xdg-open "$URL"
