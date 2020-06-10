# take photo with camera and download it to device
BASEDIR=$(dirname "$0");
mkdir -p $BASEDIR/shots; # create dir if dne
gphoto2 --capture-image-and-download --filename "$BASEDIR/shots/%Y-%m-%dT%H:%M:%SZ.%f.%C";
