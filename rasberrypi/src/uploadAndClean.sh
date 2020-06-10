# upload photo to the cloud and delete from machine
aws s3 mv --recursive --exclude ".gitignore" ./shots/ s3://timelapse-camera-photos/shots
