## Multiple montor (multi-head) vncserver

Uses x11vnc and Xdummy to create a dummy X server.

Requires X11 and x11vnc

#Usage

Copy xorg.conf.dummy to /etc/X11/

Start the server using the "startdummyx.sh" script
You can modify the script to change your display and geometery options

Attach x11vnc to the display you specified in startdummyx.sh

For example

   x11vnc -display :0 ....other options
