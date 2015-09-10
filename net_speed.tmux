#!/bin/bash -

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/scripts/helpers.sh"

download_speed="#($CURRENT_DIR/scripts/download_speed.sh)"
upload_speed="#($CURRENT_DIR/scripts/upload_speed.sh)"

download_interpolation="\#{download_speed}"
upload_interpolation="\#{upload_speed}"

do_interpolation() {
	local string=$1
	local upload_interpolated=${string/$upload_interpolation/$upload_speed}
	local all_interpolated=${upload_interpolated/$download_interpolation/$download_speed}
	echo $all_interpolated
}

update_tmux_option() {
	local option=$1
	local option_value=$(get_tmux_option "$option")
	local new_option_value=$(do_interpolation "$option_value")
	set_tmux_option "$option" "$new_option_value"
}

main() {
	update_tmux_option "status-right"
	update_tmux_option "status-left"
}
main
