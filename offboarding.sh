#!/bin/bash
LOG="/var/log/user_admin.log"
echo "Enter username to offboard:"
read USERNAME

sudo usermod -L $USERNAME
sudo chage -E 0 $USERNAME

sudo tar -czf /home/${USERNAME}_backup_$(date +%F) .tar.gz /home/$USERNAME
echo "$(date) - offboard $USERNAME and archived home directory" | sudo tee -a $LOG
echo "User disabled and data backed up."
