# see https://github.com/uladkasach/timelapse-camera/issues/1
pkill -f gphoto2;

# see https://github.com/uladkasach/timelapse-camera/issues/2
gphoto2 --get-config imagequality ; # yeah, for some reason we do need to run this before we can set-config
gphoto2 --set-config imagequality=2 ;

# see https://github.com/uladkasach/timelapse-camera/issues/3
gphoto2 --get-config shootingmode
gphoto2 --set-config shootingmode=2 # prioritize aperture
gphoto2 --get-config aperture # we had a default of 4
gphoto2 --set-config aperture=8 # larger aperture -> more in focus
