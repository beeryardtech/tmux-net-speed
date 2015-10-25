# tmux-net-speed
Tmux plugin to monitor upload and download speed of one or all interfaces

## Usage

Add one of the following format string to `status-right` tmux option.

`#{download_speed}` - Shows only download speed,
`#{upload_speed}` - Shows only upload speed,
`#{net_speed}` - Shows both the upload and download speeds.
    example: "D: 123 MB/s U: 25 MB/s"

NOTE: Shows value in either MB/s, KB/s, or B/s.

### Set Interfaces

To change which interfaces to pull from, set the following options in your `.tmux.conf`.
Use a commaseperated list.

- set -g @net_speed_inf "eth0,eth1"

**DEFAULT**: "eth0,wlan0"

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'tmux-plugins/tmux-cpu'

Hit `prefix + I` to fetch the plugin and source it.

If format strings are added to `status-right`, they should now be visible.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/tmux-plugins/tmux-net-speed ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/net_speed.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

If format strings are added to `status-right`, they should now be visible.


### Storage of Past Values
This plugin stores the total output for all the interfaces in a file in `/tmp/`. Therefore, the current user must be able to write and read from that directory.


### TODO
- Add error handling
- Configure format string for `#{net_speed}`
- Handle other OSs (currently only supports Linux)

### License

[MIT](LICENSE)
