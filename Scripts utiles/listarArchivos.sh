#
# Tormenta de bits
# http://www.tormentadebits.com/2013/10/rutinas-utiles-para-scripts-bash-I.html
#

#!/bin/bash
echo
echo "-->Archivos Logs."
echo "==============================="
cd /var/log
for LOG_FILE_NAME in *.log
do
    ls -l $LOG_FILE_NAME
done
