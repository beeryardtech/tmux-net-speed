# tmux-net-speed
Tmux plugin to monitor upload and download speed of one or all interfaces

## Formats

Shows value in either MB/s, KB/s, or B/s.

`#{download_speed}` - Shows only download speed,
`#{upload_speed}` - Shows only upload speed,
`#{net_speed}` - Shows both the upload and download speeds.
    example: "D: 123 MB/s U: 25 MB/s"

## Past values
Since this is a difference, the old values are stored in files in `/tmp/`. The user must be
readable and writable.

## TODO
- Add error handling
- Configure format string for `#{net_speed}`
- Handle other OSs (currently only supports Linux)
