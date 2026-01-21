#!/bin/bash

while true; do
echo ""
echo "======= Linux User Admin Tool ======"
echo "1 - onboar user"
echo "2- Apply Password security"
echo "3- Apply account protection"
echo "4 - Offboard user"
echo "5 - exit"
echo "========================================"

read OPTION

case $OPTION in
1) sudo ./onboarding.sh ;;
2) sudo ./security_policy.sh ;;
3) sudo ./account_protectin.sh ;;
4) sudo ./offboarding.sh ;;
5) exit 0 ;;
*) echo "Invalid option" ;;
esac
done
