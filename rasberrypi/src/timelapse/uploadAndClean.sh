# upload photo to the cloud and delete from machine
BASEDIR=$(dirname "$0");

# 1. move files to a staging folder, so that we dont have two "uploadAndClean" commands trying to upload the same data
UPLOAD_ID=$(uuidgen); # get a uuid for the id; make sure to `sudo apt-get install uuid-runtime` if this throws an error
mkdir -p $BASEDIR/tmp;
mkdir -p $BASEDIR/tmp/$UPLOAD_ID;
mv $BASEDIR/shots/* $BASEDIR/tmp/$UPLOAD_ID/;

# 2. upload from the tmp upload dir to s3 (w/ date prefix)
DATE=$(date '+%Y-%m-%d');
aws s3 mv --recursive --exclude ".gitignore" $BASEDIR/tmp/$UPLOAD_ID/ s3://timelapse-camera-photos/shots-by-date/$DATE

# 3. cleanup after self
rm -r $BASEDIR/tmp/$UPLOAD_ID;
