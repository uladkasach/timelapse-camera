# since cron only runs at max once a minute, we need to have one command that runs these every 15 seconds (w/o waiting for prior to complete)
# per https://askubuntu.com/a/805/357970
(./captureUploadClean.sh) &
(sleep 15 && ./captureUploadClean.sh) &
(sleep 30 && ./captureUploadClean.sh) &
(sleep 45 && ./captureUploadClean.sh); 
