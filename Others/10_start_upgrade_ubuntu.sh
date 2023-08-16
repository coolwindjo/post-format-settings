snap refresh snapd
sleep 2
systemctl restart snapd.
sudo do-release-upgrade -d 2>&1 | tee ubuntu_upgrade.log

