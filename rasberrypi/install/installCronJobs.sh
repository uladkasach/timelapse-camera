#write out current crontab
crontab -l > mycron

#echo new cron into cron file
echo "@reboot /home/pi/timelapse/setupEnvironmentOnBoot.sh" >> mycron;
echo "* * * * * /home/pi/timelapse/captureNPerMinuteAndClean.sh" >> mycron;

#install new cron file
crontab mycron
rm mycron
