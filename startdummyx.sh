#!/bin/sh

program=`basename "$0"`

help () {
	${PAGER:-more} << END
$program 
   Starts a dummy xserver
   
Usage:
   $program <display>
   
END
}


#if [ $2 ]; then
#   geom="$2"
#else
#   geom="1280x1024"
#   echo "Using default $geom"
#fi


if [ $1 ]; then
   echo "Starting Xdummy display $1 geometery $geom"
   
   ## The only important command in this whole script :)
   startx -- ./Xdummy $1 -config /etc/X11/xorg.conf.dummy +extension RANDR
   
else
   help; exit 0;
fi

