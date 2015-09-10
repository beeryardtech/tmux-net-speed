#!/bin/bash -

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"

sum_upload_speed()
{
    # Output uses ninth column
    sum_speed 9
}

main()
{
    # TODO make configurable
    #local upload_file=$(get_tmux_option $UPLOAD_FILE)
    local upload_file=$UPLOAD_FILE
    local old_val=$(read_file $upload_file)
    local new_val=$(sum_download_speed)

    get_velocity $new_val $old_val
}
main

