# since cron only runs at max once a minute, we need to have one command that runs these every X seconds (w/o waiting for prior to complete)
# per https://askubuntu.com/a/805/357970

BASEDIR=$(dirname "$0");

($BASEDIR/capture.sh) &
(sleep 15 && $BASEDIR/capture.sh) &
(sleep 30 && $BASEDIR/capture.sh) &
(sleep 45 && $BASEDIR/capture.sh) &
(sleep 50 && $BASEDIR/uploadAndClean.sh); # only upload and clean once, after we've taken all the photos
