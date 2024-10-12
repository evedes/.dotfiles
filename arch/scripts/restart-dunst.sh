#!/bin/bash

# Kill the current Dunst process
killall dunst

# Start Dunst again
dunst &

echo "Dunst has been restarted."
