#!/bin/bash

#
# Tools
#

mysqldump ghost_production -u root -proot > ghost_production.mysqldump

rm -rf content
cp -Rv /home/analysisparalysis/Ghost/content .
rm -rf content/logs

git add .
git commit -a --amend --no-edit
git push -f
