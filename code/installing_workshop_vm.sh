#getting guest additions
sudo apt install linux-headers-$(uname -r) build-essential dkms

#getting extra packages
sudo apt update
sudo apt install curl csh cmake
sudo apt install fig2dev gnuplot xfig
sudo apt install autoconf automake make gcc perl zlib1g-dev libbz2-dev liblzma-dev libcurl4-gnutls-dev libssl-dev libperl-dev libgsl0-dev
sudo apt install libncurses5-dev libbz2-1.0 libbz2-ocaml libbz2-ocaml-dev 
sudo apt install libcrypto++-dev


#installing java and jdk and selecting java 8 as default
sudo apt install default-jre
sudo apt install openjdk-8-jdk
sudo update-alternatives --config java


#getting assembly-stats
cd ~/tools
wget https://github.com/sanger-pathogens/assembly-stats/archive/master.zip 
unzip master.zip 
rm master.zip
mkdir ~/tools/assembly-stats-master/build
cd ~/tools/assembly-stats-master/build
cmake ..
make
make test
sudo make install


#getting minimap2
cd ~/tools
curl -L https://github.com/lh3/minimap2/releases/download/v2.11/minimap2-2.11_x64-linux.tar.bz2 | tar -jxvf -
./minimap2-2.11_x64-linux/minimap2
sudo ln -s /home/gt-workshop/tools/minimap2-2.11_x64-linux/minimap2 /usr/local/bin/minimap2

#getting canu
cd ~/tools
wget https://github.com/marbl/canu/archive/v1.7.1.tar.gz
gunzip -dc v1.7.1.tar.gz | tar -xf -
rm v1.7.1.tar.gz
cd ~/tools/canu-1.7.1/src
make -j 8
sudo ln -s /home/gt-workshop/tools/canu-1.7.1/Linux-amd64//bin/canu /usr/local/bin/canu

#getting platanus 1.2.4
mkdir ~/tools/platanus
cd ~/tools/platanus
curl -L http://platanus.bio.titech.ac.jp/?ddownload=145
sudo ln -s /home/gt-workshop/tools/platanus/platanus /usr/local/bin/platanus

#getting mummer4
cd ~/tools
wget https://github.com/mummer4/mummer/releases/download/v4.0.0beta2/mummer-4.0.0beta2.tar.gz
gunzip -dc mummer-4.0.0beta2.tar.gz | tar -xf -
cd ~/tools/mummer-4.0.0beta2/
./configure 
make
sudo make install
sudo ldconfig

#getting samtools and bcftools (if needed?)
cd ~/tools
curl -L https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2 | tar -jxvf -
cd ~/tools/samtools-1.9
./configure
make
sudo make install
cd ~/tools
curl -L https://github.com/samtools/bcftools/releases/download/1.9/bcftools-1.9.tar.bz2 | tar -jxvf -
cd ~/tools/bcftools-1.9
./configure
make
sudo make install

#getting tablet
cd ~/tools
wget https://ics.hutton.ac.uk/resources/tablet/installers/tablet_linux_x64_1_17_08_17.sh
sh tablet_linux_x64_1_17_08_17.sh
rm tablet_linux_x64_1_17_08_17.sh
sudo ln -s /home/gt-workshop/tools/Tablet/tablet /usr/local/bin/tablet

