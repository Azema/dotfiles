#!/bin/sh
# rsync backup script

sudo sh -c "
    rsync -av --delete-excluded --exclude-from=backup.lst /boot $1;
    rsync -av --delete-excluded --exclude-from=backup.lst /etc $1;
    rsync -av --delete-excluded --exclude-from=backup.lst /home $1;
    rsync -av --delete-excluded --exclude-from=backup.lst /root $1;
    touch $1/BACKUP
"
