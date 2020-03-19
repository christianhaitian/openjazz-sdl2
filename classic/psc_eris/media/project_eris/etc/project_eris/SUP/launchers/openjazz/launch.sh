#!/bin/sh
source "/var/volatile/project_eris.cfg"
cd "/var/volatile/launchtmp"
chmod +x "OpenJazz"
echo -n 2 > "/data/power/disable"
HOME="/var/volatile/launchtmp" LD_PRELOAD="${PROJECT_ERIS_PATH}/lib/sdl_remap_arm.so" ./OpenJazz -f "$(pwd)/gamedata" &> "${RUNTIME_LOG_PATH}/jazzjackrabbit.log" 
echo -n 1 > "/data/power/disable"
echo "launch_StockUI" > "/tmp/launchfilecommand"