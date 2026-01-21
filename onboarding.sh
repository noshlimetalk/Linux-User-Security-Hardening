#!/bin/bash

LOG="/var/log/user_admin.log"

echo "Enter new username"
read USERNAME

echo "Enter department:"
read DEPT

sudo useradd -m $USERNAME
echo "$USERNAME:$TEMP_PASS" |sudo chpasswd
sudo usermod -aG $DEPT $USERNAME

sudo mkdir -p /home/$USERNAME/{projects,logs,backups,docs}
sudo chown -R $USERNAME:$DEPT /home/$USERNAME

sudo chage -d 0 $USERNAME
"echo "${date} - Onboard $USERNAME into $DEPT" | sudo tee -a $LOG
echo "User created succesfully!"
echo "Temporary password: $REMP_PASS"
