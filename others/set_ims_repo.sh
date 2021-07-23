mkdir -p ims_repo && cd ims_repo
repo init -g "bsp,app" -u ssh://seunghyeon.jo@vgit.lge.com:29450/ims/integration -b manifest
repo sync --force-sync --no-clone-bundle --no-tags -j4
repo start master --all && ./setup.sh

