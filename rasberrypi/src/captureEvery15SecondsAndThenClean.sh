# since cron only runs at max once a minute, we need to have one command that runs these every 15 seconds (w/o waiting for prior to complete)
# per https://askubuntu.com/a/805/357970
(./capture.sh) &
(sleep 15 && ./capture.sh) &
(sleep 30 && ./capture.sh) &
(sleep 45 && ./capture.sh) & 
(sleep 55 && ./uploadAndClean.sh); # only upload and clean once, after we've taken all the photos 
