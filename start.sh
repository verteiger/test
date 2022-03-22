#!/bin/bash
#test
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"
echo -e ${GREEN}"1. Поточна дата:"${ENDCOLOR} 
echo $(date)
current_dir=$(pwd)
echo "2. Поточна директорія:" 
echo $current_dir
current_user=$(whoami)
echo "3. Поточний користувач:" 
echo $current_user
echo "4. UID, GUID (Без фільтру, тест):"  
echo "$(id)$current_user"
echo "5. Ім'я хоста:" 
echo $(hostname)
echo "6. Інформацію про систему:"
echo $(uname -a)
echo "7. Інформацію про дисковий простір:"
echo "$(free -h)"
echo "8. Інфо про розмір дискового простору рутової директорії:"
echo $(sudo du -sh /root)
echo "9. Інфо про розмір дискового простору поточну директорії:"
echo $(du -sh)$current_dir 
echo "10. Розгорнута інформація про вміст поточної директорії:"
echo "$(ls -la)$curren_dir"
echo "11. Список мережевих інтерфейсів:"
echo "$(ifconfig -a)"
echo "12. ІР адресса  eth0:"
echo "$(ip addr show eth0)"

