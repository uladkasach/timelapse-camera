# 1 - connect to pi from laptop
1. install raspbian on an sd card
   1. download image from rasberrypi.org: https://www.raspberrypi.org/downloads/raspbian/
      1. wget http://downloads.raspberrypi.org/raspbian_latest
   2. flash the image onto sd card: https://askubuntu.com/a/780238/357970 (open the "startup disk" ui tool on ubuntu)
   3. more references:
      1. https://itsfoss.com/tutorial-how-to-install-raspberry-pi-os-raspbian-wheezy/
2. stick sd card into raspberry pi and boot the pi!
3. connect to the pi through ssh
   1. https://linuxize.com/post/how-to-enable-ssh-on-raspberry-pi/, https://itsfoss.com/ssh-into-raspberry/
   2. enable raspberry pi: open terminal -> `raspi-config` -> `Interfacing Options` -> `ssh` -> `yes`
   3. connect pi to the internet, if on wifi -> type password
   4. connect through ssh:
      1. find the pi's ip address
         1. if in pi terminal, you can run `ip a`
         2. connect w/ `ssh pi@pi_ip_address`
   6. setup ssh key authentication, to restrict access to the pi
      1. https://linuxize.com/post/how-to-set-up-ssh-keys-on-debian-9/
      2. copy your public key to the target machine:
         1. `ssh-copy-id pi@pi_ip_address`
      3. disable signing on without ssh key
         1. `sudo nano /etc/ssh/sshd_config`
         2. modify to:
            ```
            PasswordAuthentication no
            ChallengeResponseAuthentication no
            UsePAM no
            ```
          1. reboot ssh: `sudo systemctl restart ssh`

# 2 - teach pi to take photos every x seconds
   1. install camera
   2. take photo with pi
      1. https://www.raspberrypi.org/documentation/usage/camera/raspicam/raspistill.md
      2. https://raspberrypi.stackexchange.com/questions/41798/camera-module-take-pictures-every-30-sec-to-sd-card
      3. Save photo with name $DATE
   3. run 'take photo' every x seconds
      1. run script with a cron job
         1. https://stackoverflow.com/a/53557536/3068233 ;
            1. Use SystemD timer model
            2. Does this work with pi?
               1. Yes, it does ; https://domoticproject.com/creating-raspberry-pi-service/
# 3 - teach pi to backup photos to s3 & clear memory after backup
# 4 - waterproof & enclose the pi - deploy
