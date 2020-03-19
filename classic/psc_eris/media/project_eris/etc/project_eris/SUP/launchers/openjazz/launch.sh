#!/bin/sh
source "/var/volatile/project_eris.cfg"
cd "/var/volatile/launchtmp"
chmod +x "OpenJazz"
echo -n 2 > "/data/power/disable"
HOME="/var/volatile/launchtmp" SDL_GAMECONTROLLERCONFIG="$(cat ${PROJECT_ERIS_PATH}/etc/boot_menu/gamecontrollerdb.txt)" ./OpenJazz -f "$(pwd)/gamedata" &> "${RUNTIME_LOG_PATH}/jazzjackrabbit.log" 
echo -n 1 > "/data/power/disable"
echo "launch_StockUI" > "/tmp/launchfilecommand"