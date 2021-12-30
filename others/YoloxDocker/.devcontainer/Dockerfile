# docker build -f ./Dockerfile.txt -t yolox .
FROM nvcr.io/nvidia/pytorch:21.06-py3
# FROM nvcr.io/nvidia/pytorch:21.12-py3 # not for YOLOX


# # setup timezone
# # RUN echo 'Etc/UTC' > /etc/timezone && \
# #     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
# RUN echo 'Asia/Seoul' > /etc/timezone && \
#     ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
#     apt-get update && \
#     apt-get install -q -y --no-install-recommends tzdata \
#     && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# # install packages
# RUN apt-get update -y && apt-get install -q -y \
# 		# --no-install-recommends \
#         git \
# 		wget \
# 		# vim \
# 		# xvfb \
# 		# xbase-clients \
# 		# python3-psutil \
# 		libffi-dev \
# 		# for _ctypes module in python 3.8
# 		libbz2-dev \
# 		# for _bz2 module in python 3.8
# 		liblzma-dev \
# 		# for _lzma module in python 3.8
# 		libssl-dev \
# 		build-essential \
# 		gdb g++ \
# 	&& rm -rf /var/lib/apt/lists/*


# RUN pip3 install torch==1.10.1+cu113 torchvision==0.11.2+cu113 torchaudio==0.10.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
# RUN pip install pytorch-nn-tools

ENV DEBIAN_FRONTEND=noninteractive

# This fix: libGL error: No matching fbConfigs or visuals found
ENV LIBGL_ALWAYS_INDIRECT=1

# To fix: QGLXContext: Failed to create dummy context
ENV QT_QUICK_BACKEND=software

RUN conda update -n base conda

RUN conda install -y -c conda-forge \
        pyqt \
        typing_extensions
# RUN conda install --yes --file requirements.txt

COPY requirements.txt requirements.txt
RUN bash -c 'source activate base && pip install -U pip && pip install -r requirements.txt'

# install douban pip source, boost installation
# RUN mkdir ~/.pip && echo -e "[global]\nindex-url = https://pypi.doubanio.com/simple\ntrusted-host = pypi.doubanio.com\n" > ~/.pip/pip.conf
RUN pip install mediapipe cython 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'
RUN apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get install ffmpeg libsm6 libxext6  -y

# install torch2trt
RUN cd /tmp && git clone https://github.com/NVIDIA-AI-IOT/torch2trt && cd /tmp/torch2trt && python setup.py install && rm -rf /tmp/torch2trt

RUN cd /tmp && git clone https://github.com/NVIDIA/apex && cd apex && pip install -v \
    --disable-pip-version-check --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./ &&\
    rm /tmp/apex -rf

# Install additional PyQt5 packages
RUN apt-get update && apt-get install -y \
   # Install Qml
   qmlscene \
   qml-module-qtqml* \
   qml-module-qtquick* \
   qml-module-qmltermwidget \
   qml-module-qt-websockets \
   qml-module-qt3d \
   qml-module-qtaudioengine \
   qml-module-qtav \
   qml-module-qtbluetooth \
   qml-module-qtcharts \
   qml-module-qtdatavisualization \
   qml-module-qtgraphicaleffects \
   qml-module-qtgstreamer \
   qml-module-qtlocation \
   qml-module-qtmultimedia \
   qml-module-qtpositioning \
   # Libraries for multimedia
   libqt5multimedia5-plugins \
   gstreamer1.0-libav \
   gstreamer1.0-alsa \
   gstreamer1.0-plugins-bad \
   gstreamer1.0-plugins-base \
   gstreamer1.0-plugins-base-apps \
   gstreamer1.0-plugins-good \
   gstreamer1.0-plugins-ugly \
   alsa-base \
   alsa-utils

# Selenium
RUN apt-get --allow-releaseinfo-change update
RUN apt-get -y update && apt-get install -y gnupg2

# Adding trusting keys to apt for repositories
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

# Adding Google Chrome to the repositories
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Updating apt to see and install Google Chrome
RUN apt-get -y update

# Magic happens
RUN apt-get install -y google-chrome-stable

# Installing Unzip
RUN apt-get install -yqq unzip

# Download the Chrome Driver
RUN wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`/chromedriver_linux64.zip

# Unzip the Chrome Driver into /usr/local/bin directory
RUN unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/

# Set display port as an environment variable to avoid crash
ENV DISPLAY=:99

RUN apt-get update && apt-get install -q -y \
    # --no-install-recommends \
	# libxcb-xinerama0 \
    # software-properties-common \
    # build-essential \
    # gdb g++ \
    # ninja-build \
    x11-apps \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# RUN ln -s /usr/bin/python3 /usr/bin/python
# RUN python -m pip install pytorch-nn-tools
# RUN ln -s /usr/bin/ninja /usr/bin/ninja-build

# install selenium
RUN pip install selenium

# RUN cd /workspaces/YoloxDocker/debug_gui/tools/YOLOX && pip install -v -e .
# or  python3 setup.py develop

COPY .Xauthority /root/.Xauthority
# COPY ~/.Xauthority /home/${user}/.Xauthority

# TODO seems this can be picked up from the host, which is unwanted:
# ENV XAUTHORITY /home/${user}/.Xauthority

CMD [ "/bin/bash" ]
# CMD [ "/bin/bash && cd /workspaces/YoloxDocker/debug_gui/tools/YOLOX && pip install -v -e ." ]
