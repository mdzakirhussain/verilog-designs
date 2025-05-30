cd 
cd
sudo apt-get update
sudo apt-get install -y git cmake g++ tcl-dev libreadline-dev
sudo apt-get install -y libeigen3-dev
sudo apt-get install -y automake autoconf libtool m4 perl
git clone https://github.com/ivmai/cudd.git
cd cudd
autoreconf -v --install
./configure --enable-obj --enable-dddmp
make -j$(nproc)
sudo make install
sudo apt-get install -y build-essential clang bison flex libreadline-dev gawk 
sudo apt-get tcl-dev libffi-dev git graphviz xdot pkg-config python3 python3-pip 
sudo apt-get libboost-system-dev libboost-python-dev libboost-filesystem-dev zlib1g-dev
cd
cd
git clone https://github.com/The-OpenROAD-Project/OpenSTA.git
cd OpenSTA
mkdir build && cd build
cmake ..
make -j$(nproc)
sudo make install
