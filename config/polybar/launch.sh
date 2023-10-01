#!/bin/bash

# terminate running instances, and wait
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

# run polybar
polybar base &
