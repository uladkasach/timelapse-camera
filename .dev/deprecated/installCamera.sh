# go to home dir
cd ~

# clone dependencies
git clone https://github.com/ArduCAM/MIPI_Camera.git

# enter the dependencies root
cd MIPI_Camera/RPI

# enable camera
sudo raspi-config # interface connections -> camera > yes > reboot

# enable i2c_vc
chmod +x ./enable_i2c_vc.sh
./enable_i2c_vc.sh

# install dependencies
sudo apt-get update
sudo apt-get install python-opencv
sudo apt-get install libopencv-dev

# install the SDK library
make install
sudo install -m 644 lib/libarducam_mipicamera.so /usr/lib/

# compile the examples
make clean && make

# optional settings
sudo nano /boot/config.txt # gpu_mem=180

# reboot

# install python deps
sudo pip install v4l2
sudo pip install numpy
sudo apt-get install python-opencv

# to take photo w/ the c library
~/MIPI_Camera/RPI/capture


~/MIPI_Camera/RPI/arducamstill

# to take photo w/ the python library
python ~/MIPI_Camera/RPI/python/capture.py
