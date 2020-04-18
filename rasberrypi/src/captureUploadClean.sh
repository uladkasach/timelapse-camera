# this script does the following:
#   1. take photo with camera and download it
#   2. upload photo to the cloud and delete from machine

# 1. take photo with camera and download it
mkdir -p ./shots
gphoto2 --capture-image-and-download --filename './shots/%Y-%m-%dT%H:%M:%SZ.%f.%C'

# 2. upload photo to the cloud and delete from machine
aws s3 mv --recursive --exclude ".gitignore" ./shots/ s3://timelapse-camera-photos/shots
