
#write out current crontab
crontab -l > mycron

#echo new cron into cron file
echo "* * * * * /home/pi/captureEvery15SecondsAndThenClean.sh" >> mycron

#install new cron file
crontab mycron
rm mycron
