# FROM ubuntu:18.04

# LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

# RUN apt-get update && apt-get install -q -y --no-install-recommends \
#     gnupg2 curl ca-certificates && \
#     curl -fsSL https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub | apt-key add - && \
#     echo "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64 /" > /etc/apt/sources.list.d/cuda.list && \
#     echo "deb https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64 /" > /etc/apt/sources.list.d/nvidia-ml.list && \
#     apt-get purge --autoremove -y curl \
#     && rm -rf /var/lib/apt/lists/*

# ENV CUDA_VERSION 11.3.1

# # For libraries in the cuda-compat-* package: https://docs.nvidia.com/cuda/eula/index.html#attachment-a
# RUN apt-get update && apt-get install -q -y --no-install-recommends \
#     cuda-cudart-11-3=11.3.109-1 \
#     cuda-compat-11-3 \
#     && ln -s cuda-11.3 /usr/local/cuda \
#     && rm -rf /var/lib/apt/lists/*

# # Required for nvidia-docker v1
# RUN echo "/usr/local/nvidia/lib" >> /etc/ld.so.conf.d/nvidia.conf \
#     && echo "/usr/local/nvidia/lib64" >> /etc/ld.so.conf.d/nvidia.conf

# ENV PATH /usr/local/nvidia/bin:/usr/local/cuda/bin:${PATH}
# ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64

# COPY NGC-DL-CONTAINER-LICENSE /

# # nvidia-container-runtime
# ENV NVIDIA_VISIBLE_DEVICES all
# # ENV NVIDIA_VISIBLE_DEVICES \
#     # ${NVIDIA_VISIBLE_DEVICES:-all}
# ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
# # ENV NVIDIA_DRIVER_CAPABILITIES \
#     # ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics
# ENV NVIDIA_REQUIRE_CUDA "cuda>=11.3 brand=tesla,driver>=418,driver<419 brand=tesla,driver>=440,driver<441 driver>=450"

# 
# FROM nvidia/cuda:11.3.1-base-ubuntu18.04
# 
# LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

# ENV NCCL_VERSION 2.9.9

# RUN apt-get update && apt-get install -q -y --no-install-recommends \
#     cuda-libraries-11-3=11.3.1-1 \
#     libnpp-11-3=11.3.3.95-1 \
#     cuda-nvtx-11-3=11.3.109-1 \
#     libcublas-11-3=11.5.1.109-1 \
#     libcusparse-11-3=11.6.0.109-1 \
#     libnccl2=$NCCL_VERSION-1+cuda11.3 \
#     && rm -rf /var/lib/apt/lists/*

# # apt from auto upgrading the cublas package. See https://gitlab.com/nvidia/container-images/cuda/-/issues/88
# RUN apt-mark hold libcublas-11-3 libnccl2

# # 
# # FROM nvidia/cuda:11.3.1-runtime-ubuntu18.04
# # 
# # LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

# # ENV NCCL_VERSION 2.9.9

# RUN apt-get update && apt-get install -q -y --no-install-recommends \
#     cuda-cudart-dev-11-3=11.3.109-1 \
#     cuda-command-line-tools-11-3=11.3.1-1 \
#     cuda-minimal-build-11-3=11.3.1-1 \
#     cuda-libraries-dev-11-3=11.3.1-1 \
#     cuda-nvml-dev-11-3=11.3.58-1 \
#     libnpp-dev-11-3=11.3.3.95-1 \
#     libnccl-dev=2.9.9-1+cuda11.3 \
#     libcublas-dev-11-3=11.5.1.109-1 \
#     libcusparse-dev-11-3=11.6.0.109-1 \
#     && rm -rf /var/lib/apt/lists/*

# # apt from auto upgrading the cublas package. See https://gitlab.com/nvidia/container-images/cuda/-/issues/88
# RUN apt-mark hold libcublas-dev-11-3 libnccl-dev
# ENV LIBRARY_PATH /usr/local/cuda/lib64/stubs

####################################################################
# 
# FROM nvidia/cuda:11.3.1-devel-ubuntu18.04
# # 
# # LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"
# LABEL maintainer "JoSH <coolwind@hotmail.co.kr>"

# ENV CUDNN_VERSION 8.2.0.53

# LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# RUN apt-get update && apt-get install -q -y --no-install-recommends \
#     libcudnn8=$CUDNN_VERSION-1+cuda11.3 \
#     libcudnn8-dev=$CUDNN_VERSION-1+cuda11.3 \
#     nvidia-cuda-toolkit \
#     && apt-mark hold libcudnn8 \
#     && rm -rf /var/lib/apt/lists/*

#
# Docker Bionic image to build Yocto 3.0
#
FROM ubuntu:bionic

# Keep the dependency list as short as reasonable
RUN apt-get update && \
    apt-get install -y bc bison bsdmainutils build-essential curl locales \
        flex g++-multilib gcc-multilib git gnupg gperf git-lfs \
        lib32ncurses5-dev lib32z1-dev libncurses5-dev \
        libsdl1.2-dev libxml2-utils lzop \
        openjdk-8-jdk lzop wget git-core unzip \
        genisoimage sudo socat xterm gawk cpio texinfo \
        gettext vim diffstat chrpath rsync \
        python-mako libusb-1.0-0-dev exuberant-ctags \
        pngcrush schedtool xsltproc zip zlib1g-dev libswitch-perl && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD https://commondatastorage.googleapis.com/git-repo-downloads/repo /usr/local/bin/
RUN chmod 755 /usr/local/bin/*

# ===== create user/setup environment =====
# Replace 1000 with your user/group id
# RUN export uid=108 gid=113 user=jenkins && \
#     mkdir -p /home/${user} && \
#     echo "${user}:x:${uid}:${gid}:${user},,,:/home/${user}:/bin/bash" >> /etc/passwd && \
#     echo "${user}:x:${uid}:" >> /etc/group && \
#     echo "${user} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${user} && \
#     chmod 0440 /etc/sudoers.d/${user} && \
#     chown ${uid}:${gid} -R /home/${user}

RUN git config --global color.ui false

# The persistent data will be in these two directories, everything else is
# considered to be ephemeral
#VOLUME ["/tmp/ccache", "/aosp"]

# Improve rebuild performance by enabling compiler cache
ENV USE_CCACHE 1
ENV CCACHE_DIR /home/jenkins/.ccache

# some QT-Apps/Gazebo do not show controls without this
ENV QT_X11_NO_MITSHM 1

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
 

# setup timezone
RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && \
    apt-get install -q -y --no-install-recommends tzdata \
    && rm -rf /var/lib/apt/lists/*

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    python-pip \
    python-mako \ 
    python3-mako \ 
    dirmngr \
    gnupg2 \
    gdb g++-6 \
    autoconf automake \
    libssl-dev u-boot-tools dos2unix doxygen \
    # libc6:i386 \
    libdb1-compat \
    # libstdc++6:i386 libz1:i386 \
    # libncurses5:i386 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install mako

RUN sudo dpkg-reconfigure dash

# 
# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
# FROM ros:melodic-ros-core-bionic
# 

# install bootstrap tools
# RUN apt-get update && apt-get install -q -y --no-install-recommends \
#     python-rosdep \
#     python-rosinstall \
#     python-vcstools \
#     && rm -rf /var/lib/apt/lists/*

# # bootstrap rosdep
# RUN rosdep init && \
#   rosdep update --rosdistro $ROS_DISTRO

# # install ros packages
# RUN apt-get update && apt-get install -q -y --no-install-recommends \
#     ros-melodic-ros-base=1.4.1-0* \
#     && rm -rf /var/lib/apt/lists/*

# RUN sudo su && export RUNLEVEL=1
# RUN export DEBIAN_FRONTEND=noninteractive \

# RUN apt-get update && apt-get install -q -y --no-install-recommends \
#     ros-melodic-desktop-full \
#     vim x11-apps apt-utils \
#     && rm -rf /var/lib/apt/lists/*
#     # ros-melodic-turtlesim \

# RUN apt-get update && apt-get install -q -y --no-install-recommends \
#     libmuparser-dev \
#     ros-melodic-costmap-converter \
#     ros-melodic-costmap-2d \
#     && rm -rf /var/lib/apt/lists/*
    # ros-melodic-cv-bridge \
    # ros-melodic-dynamic-reconfigure \
    # ros-melodic-geometry-msgs \
    # ros-melodic-message-generation \
    # ros-melodic-message-runtime \
    # ros-melodic-nav-msgs \
    # ros-melodic-pluginlib \
    # ros-melodic-roscpp \
    # ros-melodic-roscpp-git \
    # ros-melodic-std-msgs \
    # cmake \
    # pkg-config \
    # ros-build-tools \
    # python-rospkg \
    # ros-melodic-catkin \

# RUN apt-get update && apt-get install -q -y --no-install-recommends \
#     libcanberra-gtk-module libcanberra-gtk3-module \
#     && rm -rf /var/lib/apt/lists/*

RUN apt-get upgrade -y

RUN sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 10
RUN sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 10

# # setup sources.list
# RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list

# # setup keys
# RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# ENV ROS_DISTRO melodic

# # install ros packages
# RUN apt-get update && apt-get install -q -y --no-install-recommends \
#     ros-melodic-ros-core=1.4.1-0* \
#     && rm -rf /var/lib/apt/lists/*

# # setup entrypoint
# COPY ./ros_entrypoint.sh /

# ENTRYPOINT ["/ros_entrypoint.sh"]
# CMD ["bash"]

# ENV HOME /home/josh
# ENV USER josh
RUN useradd -ms /bin/bash josh
USER josh
# WORKDIR $HOME/ti

# # visual studio code
# RUN sudo apt-get install -y libnss3 libxkbfile1 libsecret-1-0
# RUN wget -O $HOME/code_1.33.1-1554971066_amd64.deb https://go.microsoft.com/fwlink/?LinkID=760868
# RUN sudo dpkg -i $HOME/code_1.33.1-1554971066_amd64.deb && rm -f $HOME/code_1.33.1-1554971066_amd64.deb 
# #RUN code --install-extension platformio.platformio-ide --force
# RUN code --install-extension ms-vscode.cpptools --force
# ADD docker_home/initial-vcode.sh $HOME/.initial-vcode.sh
# ADD docker_home/run-vcode.sh $HOME

# USER coolwind
# WORKDIR /home/coolwind


# ros env
# node들을 실행할때 필요한 환경변수들은 미리 초기화 한다.
# RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> $HOME/.bashrc
# RUN echo "source /root/catkin_ws/devel/setup.bash" >> $HOME/.bashrc
# RUN echo "export ROS_MASTER_URI=http://localhost:11311" >> $HOME/.bashrc
# RUN echo "export ROS_HOSTNAME=localhost" >> $HOME/.bashrc
# RUN echo "export ROS_VERSION=1" >> $HOME/.bashrc

# RUN echo "alias cw='cd /root/catkin_ws'" >> $HOME/.bashrc
# RUN echo "alias cs='cd /root/catkin_ws/src'" >> $HOME/.bashrc
# RUN echo "alias cm='cd /root/catkin_ws && catkin_make'" >> $HOME/.bashrc

RUN echo "alias eb='vim ~/.bashrc'" >> $HOME/.bashrc
RUN echo "alias eba='vim ~/.bash_aliases'" >> $HOME/.bashrc
RUN echo "alias sb='source ~/.bashrc'" >> $HOME/.bashrc
RUN echo "alias agi='sudo apt-get install'" >> $HOME/.bashrc

RUN echo "alias ls='ls -alF'" >> $HOME/.bashrc
RUN echo "alias la='ls -A'" >> $HOME/.bashrc
RUN echo "alias l='ls -CF'" >> $HOME/.bashrc
RUN echo "alias rm='rm -i'" >> $HOME/.bashrc
RUN echo "alias mv='mv -i'" >> $HOME/.bashrc
RUN echo "alias cp='cp -i'" >> $HOME/.bashrc
RUN echo "GCC92PATH=$HOME/ti/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu/bin:$HOME/ti/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/bin" >> $HOME/.bashrc
RUN echo "export PATH=\$GCC92PATH:\$PATH" >> $HOME/.bashrc
RUN echo "CCTOOLSPATH=$HOME/ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/linux-devkit/sysroots/x86_64-arago-linux/usr/bin" >> $HOME/.bashrc
RUN echo "export PATH=\$CCTOOLSPATH:\$PATH" >> $HOME/.bashrc