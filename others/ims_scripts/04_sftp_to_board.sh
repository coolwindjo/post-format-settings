#!/bin/bash

sftp -v root@192.168.0.16 <<EOF
cd /tmp
put engineLoadDescription.json
put run_rpmain.sh
lcd ims_repo/_out/ambarella/debug/
put opt.tar.gz
quit
EOF

ssh -v root@192.168.0.16 <<EOF
cd /tmp
rm -rf /opt/*
tar xvf opt.tar.gz -C /opt
mv engineLoadDescription.json /opt/bin/bin/
mv run_rpmain.sh /opt/bin/
exit
EOF
