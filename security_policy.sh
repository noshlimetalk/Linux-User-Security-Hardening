#!/bin/bash
LOG="/var/log/user_admin.log"

echo "Enter username to apply password policies:"
read USERNAME

# Password aginf for user accounts
sudo chage -M 90 $USERNAME # User password expires in 90 days
sudo chage -m 7 $USERNAME # Minimum 7 days between being able to change password
sudo chage -W 7 $USERNAME #Warns user 7 days before password expiry

# Strong password policy (pwquality)

sudo cp config/pwquality.conf /etc/security/pwquality.conf

echo "$(date) - Password policies applies to $USERNAME" | sudo tee -s $LOG
echo "Password security policies applied."
