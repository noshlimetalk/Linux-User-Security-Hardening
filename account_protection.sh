#!/bin/bash
LOG="/var/log/user_admin.log"
echo "Configuring account lockout policy (Ubuntu)"

sudo bash -c 'cat >> /etc/pam.d/common-auth << EOF auth required pam.tally2.so deny=3 unlock_time=900 onerrr=fail audit EOF'

sudo bash -c 'cat >> /etc/pam.d/common-account << EOF account required pam_tally2.so EOF'

echo "$(date) - Account lockout policy enabled (3 attemps /15 min)" | sudo tee -a $LOG
echo "Account protection policy applied"

