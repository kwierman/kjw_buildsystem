#!/bin/bash

# Boost environment variables
#export BOOST_ROOT=$DEV_DIR/Install/external_software

if [ -e $DEV_DIR/Install/external_software/bin/geant4.sh ]
then
    source $DEV_DIR/Install/external_software/bin/geant4.sh
fi

#ROOT Configuration
export ROOTSYS=$DEV_DIR/Install/external_software
add_all $ROOTSYS

if [ -e $DEV_DIR/Install/external_software/bin/thisroot.sh ]
then
    source $DEV_DIR/Install/external_software/bin/thisroot.sh
fi

#add_python $DEV_DIR/Source/external_software/mechanize
 


