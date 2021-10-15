rm -rf cms_repo/_builds/ cms_repo/_out/
cd cms_repo/
# rm -rf cms_repo/_out/ambarella/debug/
./build.sh -p ambarella 2>&1 | tee ../cms_repo_build.log