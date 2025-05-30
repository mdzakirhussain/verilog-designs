sudo apt-get update
sudo apt-get install -y libxext6
sudo apt-get install -y libxft2 libxrender1 libxt6


sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install -y libxext6:i386 libxft2:i386 libxrender1:i386 libxt6:i386 libc6:i386


file /home/codespace/intelFPGA/20.1/modelsim_ase/linux/vish
