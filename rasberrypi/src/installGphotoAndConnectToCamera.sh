# purpose: install gphoto in order to control your camera from unix machine (e.g., rasppi)
# - ref: http://www.gphoto.org/doc/manual/, http://www.gphoto.org/doc/manual/using-gphoto2.html

# 1. install the packages
sudo apt update
sudo apt install gphoto2 libgphoto2-6

# 2. check gphoto is working
gphoto2 -v

# 3. connect camera and try to autodetect it
gphoto2 --auto-detect
# for us, it displayed the following:
# ➜ gphoto2 --auto-detect
# Model                          Port
# ----------------------------------------------------------
# Canon PowerShot G10            usb:001,005

# 4. if you're curious, get more deets about your camera
gphoto2 --summary
# you can also double check that it supports what you need here
# here is what we saw:
# Device Capabilities:
# 	File Download, File Deletion, File Upload
# 	Generic Image Capture, No Open Capture, Canon Capture

# go at it! Here are some example commands from the docs: http://www.gphoto.org/doc/manual/ref-gphoto2-cli.html#description
# note: these are all available on the man page

# List files on camera.
gphoto2 --list-files

# Get files number 7 through 13 from the list output by gphoto2 --list-files.
gphoto2 --get-file 7-13

# Delete files given in range.
gphoto2 --delete-file 7-13

# Capture one image every 60 seconds from now to eternity. The example hook script will be called after each captured image has been stored on the computer.
gphoto2 --capture-image-and-download --interval 60 --hook-script /usr/share/doc/gphoto2/test-hook.sh

# Capture photo and download it to computer once:
gphoto2 --capture-image-and-download
