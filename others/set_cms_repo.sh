mkdir -p cms_repo && cd cms_repo
repo init -u ssh://seunghyeon.jo@vgit.lge.com:29450/ims/integration -b manifest -m motional_default.xml
repo sync --force-sync --no-clone-bundle --no-tags -j4
repo start motional_dev --all && ./setup.sh

