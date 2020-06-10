
#write out current crontab
crontab -l > mycron

#echo new cron into cron file
echo "* * * * * /home/pi/timelapse/captureEvery15SecondsAndThenClean.sh" >> mycron;
echo "@reboot pkill -f gphoto2 && gphoto2 --set-config imagequality=2" >> mycron; # see https://github.com/uladkasach/timelapse-camera/issues/1 and https://github.com/uladkasach/timelapse-camera/issues/2

#install new cron file
crontab mycron
rm mycron
