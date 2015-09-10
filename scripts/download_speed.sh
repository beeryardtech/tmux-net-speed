#!/bin/bash -

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"

sum_download_speed()
{
    # Output uses first column
    sum_speed 1
}

main()
{
    # TODO make configurable
    #local download_file=$(get_tmux_option $DOWNLOAD_FILE)
    local download_file=$DOWNLOAD_FILE
    local old_val=$(read_file $download_file)
    local new_val=$(sum_download_speed)

    get_velocity $new_val $old_val
}
main

