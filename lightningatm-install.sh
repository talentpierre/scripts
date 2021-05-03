### start
sudo apt update
sudo apt -yy upgrade

## getting files
cd ~
git clone https://github.com/21isenough/LightningATM.git
wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.60.tar.gz

## make display libs
tar zxvf bcm2835-1.60.tar.gz 
cd ~/bcm2835-1.60/
sudo ./configure
sudo make
sudo make check
sudo make install
cp -r /home/pi/bcm2835-1.60/e-Paper/RaspberryPi_JetsonNano/python/lib/waveshare_epd /home/pi/LightningATM/
cd ~

## dependencies
sudo apt install -y wiringpi python3-pip python3-pil python3-numpy

## python stuff
sudo pip3 install RPi.GPIO
sudo pip3 install spidev
pip3 install -r ~/LightningATM/requirements.txt

## config changes
sed -i "s/display = papiruszero2in.*$/display = waveshare2in13/" ~/.lightningATM/config.ini

### ende
### 
