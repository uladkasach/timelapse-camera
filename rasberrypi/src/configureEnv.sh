# see https://github.com/uladkasach/timelapse-camera/issues/1
pkill -f gphoto2;

# see https://github.com/uladkasach/timelapse-camera/issues/2
gphoto2 --get-config imagequality ; # yeah, for some reason we do need to run this before we can set-config
gphoto2 --set-config imagequality=2 ;
