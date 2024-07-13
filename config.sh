# shellcheck shell=bash
# shellcheck disable=2034

interval=1
blocks=(kern cpu backlight loadavg mem disk vol battery datetime)

kernel="$(uname -sr)"
kern() {
    full_text="$kernel"
    color="#fab387"
}

backlight() {
    full_text="BRIGHTNESS: %percentage"
    color="#f9e2af"

    block_backlight "intel_backlight" "actual_brightness"
}

battery() {
    full_text="BAT: %status %percentage"
    color="#94e2d5"

    block_battery "BAT1" "CHR" "DIS" "FULL"
}

loadavg() {
    full_text="LOADAVG: %load1 / %load5 / %load15"
    color="#f38ba8"

    block_loadavg
}

cpu() {
    full_text="CPU: %usage%"
    color="#f2cdcd"

    block_cpu
}

mem() {
    full_text="MEM: %memavail SWAP: %swapavail"
    color="#74c7ec"

    block_mem
}

disk() {
    full_text="DISK: %avail"
    color="#f2c2e7"

    block_disk "/"
}

vol() {
    full_text="VOL: %vol%mutestatus"
    color="#cba6f7"

    block_pwvol "@DEFAULT_SINK@" " [MUTED]"
}

datetime() {
    full_text="%date"
    color="#a6e3a1"

    block_datetime "%c" "printf"
}
