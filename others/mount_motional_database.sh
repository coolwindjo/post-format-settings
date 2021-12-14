#!/bin/sh
if [ $# -ne 1 ];then 
	echo "bash ./mount_motional_database.sh [motional_database user]" 
	exit 1 
fi

USER=$1 
MOUNT_DIR='/mnt/motional_database' 
sudo mkdir -p ${MOUNT_DIR} 
sudo mount -v -t cifs -o username="${USER}",vers=2.0,domain=LGE,uid=$(id -u),gid=$(id -g),forceuid,forcegid,sec=ntlmsspi //10.158.10.28/Motional_Database ${MOUNT_DIR}

