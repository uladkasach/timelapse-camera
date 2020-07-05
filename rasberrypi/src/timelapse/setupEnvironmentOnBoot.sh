# safely stop existing gphoto processes and free the port, solves https://github.com/uladkasach/timelapse-camera/issues/1
pkill -f gphoto2;

# ensure that the capture config is accessible (take it out of readonly mode, if not already)
gphoto2 --set-config capture=1;

# set image quality
gphoto2 --get-config imagequality;
gphoto2 --set-config imagequality=1; # fine, could go to superfine if processor is fast enough to upload at this speed

# choose long distance target for focus
gphoto2 --get-config shootingmode; # original was Auto (0)
gphoto2 --set-config shootingmode=2; # set to AV
gphoto2 --get-config aperture; # we had a default of 4
gphoto2 --set-config aperture=8;
