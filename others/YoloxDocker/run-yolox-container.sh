TAG='yolox-container'
USER_UID=$(id -u)

IMAGE=$(docker inspect --format='{{.Config.Image}}' $TAG)
if [ -z "$IMAGE" ]; then
    docker build --tag $TAG .devcontainer
fi

export PATH=/usr/local/cuda-11.3/bin${PATH:+:${PATH}}

# XAUTH=/tmp/.docker.xauth
# if [ ! -f $XAUTH ]
# then
#     xauth_list=$(xauth nlist :0 | sed -e 's/^..../ffff/')
#     if [ ! -z "$xauth_list" ]
#     then
#         echo $xauth_list | xauth -f $XAUTH nmerge -
#     else
#         touch $XAUTH
#     fi
#     chmod a+r $XAUTH
# fi

xhost +local:docker


if [ -z "$IMAGE" ]; then
    IMAGE=$TAG
		# -e DISPLAY=$IP:0 \
	    # --env="XAUTHORITY=$XAUTH" \
    docker run \
	    --rm \
	    -it \
	    --net=host \
	    --privileged \
	    --gpus all \
	    --env NVIDIA_VISIBLE_DEVICES=all \
	    --env NVIDIA_DRIVER_CAPABILITIES=all \
	    --env DISPLAY=$DISPLAY \
	    --env="QT_X11_NO_MITSHM=1" \
	    --cap-add=SYS_PTRACE \
	    --security-opt seccomp=unconfined \
	    --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw \
		--volume=${HOME}/.ssh:${HOME}/.ssh \
		--volume=${PWD}:/workspace \
		--volume=/run/user/${env:USER_UID}/pulse:/run/user/1001/pulse \
	    --group-add=plugdev \
	    --group-add=video \
		--workdir=/workspace \
	    --env CONTAINER_NAME=$TAG \
	    --name=$TAG \
	    $IMAGE \
		/bin/bash
	    # $*
else
    docker start $TAG
    if [ -z "$*" ]; then
        docker exec -it $TAG /bin/bash
    else
        docker exec -it $TAG $@
    fi
fi

docker rmi $IMAGE

xhost -local:docker
