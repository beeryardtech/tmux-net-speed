# tmux-net-speed
Tmux plugin to monitor upload and download speed of one or all interfaces. 

NOTE: Currently sums "eth0" and "wlan0" interfaces

## Special Credit
This plugin is roughly based on the various plugins in [https://github.com/tmux-plugins]("tmux-plugins"). 

## Formats
Shows value in either MB/s, KB/s, or B/s.

- `#{download_speed}` - Shows only download speed,
- `#{upload_speed}` - Shows only upload speed,
- `#{net_speed}` - Shows both the upload and download speeds.
    example: "D: 123 MB/s U: 25 MB/s"

## Past Values
Since this is a difference, the old values are stored in files in `/tmp/`. The user must be able to 
read and write to this directory.

## TODO
- Add error handling
- Configure which interfaces to calculate
- Configure format string for `#{net_speed}`
- Handle other OSs (currently only supports Linux)
