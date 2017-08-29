#!/bin/bash
ROM_TREE=$PWD
cd ~/Mokee
make clobber
find /media/duke/85212d72-61fe-2046-b4ca-8a449c52f0c8/FULL -atime +9 -exec rm -rf {} \;
find /media/duke/85212d72-61fe-2046-b4ca-8a449c52f0c8/OTA -atime +3 -exec rm -rf {} \;
repo sync -j20 --force-sync --no-clone-bundle
bash /home/duke/Mokee/DRA-BOT/Step2.sh

