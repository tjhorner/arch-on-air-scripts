# Arch on Air Scripts

This is a collection of scripts that I found useful when running Arch on my MacBook Air

## `monconfig.sh`

I made this to quickly set my `xrandr` configuration to common monitor setups:

- `mirror` - Mirrors the internal display to an external display (assumed to be 1080p)
- `extend` - Uses the external display as an additional workspace, extended to the right
- `internal` - Only use the internal display
- `external` - Only use the external display

## `configure-monitors.sh`

This script was made to automatically change my `xrandr` configuration whenever I connect/disconnect a monitor.
Used in conjunction with a udev rule that detects changes in monitor setup.

- If an external display is connected, it runs `monconfig mirror`
- If there's no external display connected, it runs `monconfig internal`

## `keyboard-backlight.py`

This is a script from the Arch wiki that I have i3 bindings for. It simply sets the keyboard backlight.
