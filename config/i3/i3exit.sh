#!/bin/bash

# Simple script for doing stuff

lock() {
    i3lock
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        lock && systemctl suspend
        ;;
    hibernate)
        lock && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Uknown: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 1
esac

exit 0
