#!/bin/bash
set -m #Set Job Control

#Get tools
sudo apt-get -y install cmake
sudo apt-get -y install build-essential #Grabs make and other important things
sudo apt-get -y install nodejs #Used in Harrogate, Node.js
sudo apt-get -y install npm #Like PIP but for node.js

#Pull from Github
( git clone https://github.com/kipr/Wombat-Firmware && echo -e "Finished Cloning Wombat Firmware \n" && fg ) &

( git clone https://github.com/kipr/libwallaby && echo -e "Finished Cloning Libwallaby! \n" && fg ) &
( git clone https://github.com/kipr/pcompiler && echo -e "Finished Cloning Pcompiler! \n" && fg ) &
( git clone https://github.com/kipr/libkar && echo -e "Finished Cloning Libkar! \n" && fg ) &
( git clone https://github.com/kipr/botui && echo -e "Finished Cloning Botui! \n" && fg ) &
git clone https://github.com/kipr/harrogate && echo -e "Finished Cloning Harrogate! \n" && fg


#Install Harrogate Dependancies
echo -e "\n Installing Harrogate Dependancies... \n"

#Node.js Setup
node -v
npm install npm@latest -g
npm -v

#Gulp Setup
npm install --global gulp-cli


#Install npm Dependancies
cd harrogate
npm install
cd ..

#Get Other Requirements
sudo apt-get -y install zliblg-dev libpng-dev libbson-1.0 libboost-all-dev 

#Download libaurora
git clone https://github.com/kipr/libaurora


#Download Bsonbind
git clone https://github.com/kipr/bsonbind


#Download Daylight
git clone https://github.com/kipr/daylite


echo -e "\n Finished Installing Harrogate Dependancies! \n"

#Fixes issue of write protections, for some reason this keeps messing up
sudo chmod -R 777 *

#Install Qt Creator
sudo apt-get -y install openjdk-8-jre qtcreator

echo

cat instructions.txt


echo -e "\n--------------------------------------------- \n"
echo -e "Your Development Toolkit is Now Complete. \n"
echo -e "--------------------------------------------- \n"
