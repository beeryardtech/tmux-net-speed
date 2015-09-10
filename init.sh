#!/bin/bash -

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/scripts/helpers.sh"

# Initialize files
echo 0 > $DOWNLOAD_FILE
echo 0 > $UPLOAD_FILE
