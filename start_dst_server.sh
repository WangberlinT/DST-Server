#! /bin/bash
cd ~
screen -S "DST_Master" ./start_master.sh
screen -S "DST_Cave" ./start_cave.sh 
