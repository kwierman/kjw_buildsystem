#devEnv : setup definitions for development tools

add_library() {
    export LD_LIBRARY_PATH=$1/lib\:$LD_LIBRARY_PATH
    export DYLD_LIBRARY_PATH=$1/lib\:$DYLD_LIBRARY_PATH
}

export -f add_library

add_path() {
    export PATH=$1/bin\:$PATH
}

export -f add_path

add_package() {
    export PKG_CONFIG_PATH=$1/lib/pkgconfig\:$PKG_CONFIG_PATH
}

export -f add_package

add_all() {
    add_library $1
    add_path $1
    add_package $1
}

export -f add_all

add_python() {
    PYTHONPATH=$1\:/$PYTHONPATH
}

export -f add_python

b2s() {
    BUILD=$(pwd)
    other_string="${BUILD/Build/Source}"
    ccmake $other_string
}

export -f b2s

alias emacs='emacs -nw'
export EDITOR="emacs"
alias root='root -l'

export KJW_SRC_DIR=$DEV_DIR/Source
if [ -e $KJW_SRC_DIR/external_software/extEnv.sh ]
then 
    source $KJW_SRC_DIR/external_software/extEnv.sh
fi
if [ -e $KJW_SRC_DIR/internal_software/intEnv.sh ]
then 
    source $KJW_SRC_DIR/internal_software/intEnv.sh
fi 
if [ -e $KJW_SRC_DIR/kjw_software/kjwEnv.sh ]
then
    source $KJW_SRC_DIR/kjw_software/kjwEnv.sh
fi

#add_library /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk/usr/lib

#export AllowForHeavyElements=1
