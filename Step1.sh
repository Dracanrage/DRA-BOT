#!/bin/bash

### Enter local folder,you can replace it by your own path.
cd ~/Mokee
### Clean up old build in order to get a fully new build.
make clobber
### Clean up last Mokee build,you can replace it by you own path or delete this script.
find /media/duke/85212d72-61fe-2046-b4ca-8a449c52f0c8/FULL -atime +9 -exec rm -rf {} \;
find /media/duke/85212d72-61fe-2046-b4ca-8a449c52f0c8/OTA -atime +3 -exec rm -rf {} \;
### Sync to lastest Mokee source,you can use it to sync other souce(according to your path in cd script)
repo sync -j20 --force-sync --no-clone-bundle
### Run Step2.I made it to avoid patch problem caused by timeless.
bash /home/duke/Mokee/DRA-BOT/Step2.sh
