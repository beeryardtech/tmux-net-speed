#!/bin/bash -

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"

main()
{
    local download=$("$CURRENT_DIR/download_speed.sh")
    local upload=$("$CURRENT_DIR/upload_speed.sh")

    # TODO - make the text format configurable
    printf "D:%10s U:%10s" "$download" "$upload"
}
main
