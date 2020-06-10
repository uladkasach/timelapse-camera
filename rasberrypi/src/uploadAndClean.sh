# upload photo to the cloud and delete from machine
BASEDIR=$(dirname "$0");
aws s3 mv --recursive --exclude ".gitignore" $BASEDIR/shots/ s3://timelapse-camera-photos/shots
