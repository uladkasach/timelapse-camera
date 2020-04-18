# does not work, since we're using ardu-cam

#!/bin/bash
DATE=$(date +"%Y-%m-%d_%H%M")
raspistill -o /home/pi/stills/$DATE.jpg
