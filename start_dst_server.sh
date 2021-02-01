#! /bin/bash
echo start dst servers...
cd ~/server_script/
screen -dmS DST_Master bash -c 'exec ./start_master.sh'
screen -dmS DST_Cave bash -c 'exec ./start_cave.sh'
echo master and cave servers started, \" screen -ls \" to check, screen -r to attach
