#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
clear
data=( `cat /var/log/xray/access.log | grep 'email:' | cut -d ' ' -f 7 | sort -u`);
echo "----------------------------------------";
echo "---------=[ Vmess User Login ]=---------";
echo "----------------------------------------";
for i in "${data[@]}"
do
 echo "$i" >> /tmp/other.txt
done
oth=$(cat /tmp/other.txt | sort | uniq | nl)
echo "$oth"
echo "----------------------------------------"
echo "Script Mod By andi64"
rm -rf /tmp/other.txt
