#!/bin/bash

path=/home/vagrant/memory_log/log_file.log

midnight=$(date +%H%M)
email=vivyannerichards@gmail.com

touch ${path}
if [[ ${midnight} == 0000 ]]
   then echo "THIS IS YOUR MIDNIGHT REPORT" | mutt -a ${path} -s "Midnight RAM report" -- ${email} && sudo rm -f ${path}else
   date >> ${path}
   free -h >> ${path}
   echo "-------"

fi