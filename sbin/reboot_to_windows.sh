#!/bin/bash -e
#
# Reboot to windows
# snatched from https://unix.stackexchange.com/a/112284

# shellcheck disable=SC2312
windows_title=$(grep -i windows /boot/grub/grub.cfg | cut -d "'" -f 2)
readonly windows_title

grub-reboot "${windows_title}"
reboot
