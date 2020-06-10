# take photo with camera and download it to device
mkdir -p ./shots # create dir if dne
gphoto2 --capture-image-and-download --filename './shots/%Y-%m-%dT%H:%M:%SZ.%f.%C'
