LINUX_PACKAGE_NAME="git-all"
MACOS_PACKAGE_NAME="git"

YUM_CMD=$(which yum)
APT_GET_CMD=$(which apt-get)
BREW_CMD=$(which brew)

# Install Git on Linux distribution OS and MacOS and check version
if [[ ! -z $YUM_CMD ]]; then
    # For Debian / Ubuntu installation
    sudo yum install $LINUX_PACKAGE_NAME
    git --version
elif [[ ! -z $APT_GET_CMD ]]; then
    # For Fedora / CentOS installation
    sudo apt-get install $LINUX_PACKAGE_NAME
    git --version
elif [[ ! -z $BREW_CMD ]]; then
    # For MacOS (Brew) installation
    brew install $MACOS_PACKAGE_NAME
    git --version
else
    echo "ERROR: Cannot install package Git"
    exit 1;
fi