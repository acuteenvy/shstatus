# shellcheck shell=bash
# shellcheck disable=2034

interval=1

kernel="$(uname -sr)"
update() {
    block       fab387  "$kernel"
    loadavg     f38ba8  "LOADAVG: %load1 / %load5 / %load15"
    mem         74c7ec  "MEM: %memavail SWAP: %swapavail"
    disk        f2c2e7  "DISK: %avail" "DISK: not mounted" "/"
    pwvol       cba6f7  "VOL: %vol" "@DEFAULT_SINK@"
    datetime    a6e3a1  "%date" "%c"
}
