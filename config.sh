# shellcheck shell=bash
# shellcheck disable=2034

interval=1

kernel="$(uname -sr)"
kern() {
    local full_text="$kernel"
    local color="#fab387"

    block
}

backlight() {
    local full_text="BRIGHTNESS: %percentage"
    local color="#f9e2af"

    block_backlight "intel_backlight" "actual_brightness"
}

battery() {
    local full_text="BAT: %percentage"
    local color="#94e2d5"

    block_battery "BAT1"
}

loadavg() {
    local full_text="LOADAVG: %load1 / %load5 / %load15"
    local color="#f38ba8"

    block_loadavg
}

mem() {
    local full_text="MEM: %memavail SWAP: %swapavail"
    local color="#74c7ec"

    block_mem
}

disk() {
    local full_text="DISK: %avail"
    local color="#f2c2e7"

    block_disk "/"
}

vol() {
    local full_text="VOL: %vol%mutestatus"
    local color="#cba6f7"

    block_pwvol "@DEFAULT_SINK@" " [MUTED]"
}

datetime() {
    local full_text="%date"
    local color="#a6e3a1"

    block_datetime "%c"
}

update() {
    kern
    backlight
    loadavg
    mem
    disk
    vol
    battery
    datetime
}
