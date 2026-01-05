#!/bin/bash
set -e

# Start GPSD in the background
gpsd -N -n 'udp://0.0.0.0:3001' &

# Start a bash shell to keep the container running and allow user interaction
exec /bin/bash