#!/bin/bash
sftp -v root@192.168.0.16 <<EOF
cd /tmp
# put run_rpmain.sh
# put libopencv_videoio.so.3.4*
# put libperformanceMonitorEngine.so*
lcd cms_repo/_out/ambarella/debug/
put opt.tar.gz
quit
EOF

ssh -v root@192.168.0.16 <<EOF
cd /tmp
rm -rf /opt/lib/* /opt/bin/*
tar xvf opt.tar.gz -C /opt
# mv run_rpmain.sh /opt/bin/
# mv libopencv_videoio.so.3.4* /opt/lib/
# mv libperformanceMonitorEngine.so* /opt/lib/
cd /opt/lib
exit
EOF
