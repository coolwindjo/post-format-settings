cd yocto-build
./oe-layertool-setup.sh -f configs/processor-sdk-linux/processor-sdk-linux-07_03_00.txt
cd build
echo "INHERIT += \"own-mirrors\"" >> conf/local.conf
echo "SOURCE_MIRROR_URL = \"https://software-dl.ti.com/processor-sdk-mirror/sources/\"" >> conf/local.conf
echo "ARAGO_BRAND  = \"psdkla\"" >> conf/local.conf
echo "DISTRO_FEATURES_append = \" virtualization\"" >> conf/local.conf
echo "IMAGE_INSTALL_append = \" docker\"">> conf/local.conf
. conf/setenv
TOOLCHAIN_BASE=/soc/ti  MACHINE=j7-evm bitbake -k tisdk-default-image

