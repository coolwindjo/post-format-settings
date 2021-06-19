git config --global user.email "coolwind@hotmail.co.kr"
git config --global user.name "JoSH@CoolStation"
git config --global core.editor "vim"
mkdir -p ~/repos && cd ~/repos
git clone --recursive git@github.com:SensorFusionProject/SensorFusion.git
# git submodule update --init --recursive
cd SensorFusion/ros/catkin_ws
pip install gdown
export PATH=$PATH:~/.local/bin
gdown --id 1qsRcCEStqcpRRNeYRx2BRzpust8Zx27B --output car_detection.bag
gdown --id 1m2dj1Y4pqClBzApfGHmkBCsKMyLJkYGD --output human_car_best.bag
gdown --id 14ORSauKEp2Nt2VgwZqa0KwdKRdkvJ1Kp --output overtaking_backward.bag
gdown --id 1tnSdYKKDlaP-tKxUWm6XADoL3OolxWJB --output kickboard_car.bag
cp src/radar_package/0001-update-launch-and-cfg-in-darknet_ros.patch src/radar_package/yolov4-for-darknet_ros/darknet_ros/
cp src/radar_package/0001-update-makefile-in-darknet.patch src/radar_package/yolov4-for-darknet_ros/darknet_ros/darknet/
cd src/radar_package/yolov4-for-darknet_ros/darknet_ros
git am -3 --keep-cr --committer-date-is-author-date --whitespace=fix 0001-update-launch-and-cfg-in-darknet_ros.patch
cd darknet
git am -3 --keep-cr --committer-date-is-author-date --whitespace=fix 0001-update-makefile-in-darknet.patch
cd ../darknet_ros/yolo_network_config/weights
wget https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/yolov4.weights
