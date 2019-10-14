#!/bin/bash
#
#######################################################
#                                                     #
#       WiFi-Pumpkin Easy install script - bash       #
#						                                          #
#######################################################
#
# This script is primary build for Kali Linux.
# The script makes sure that the install of the tool is as quick and easy as possible.
# We follow the steps of the original developers of the tool.
# Feel free to make improvements and share!
#
# Update your system first!
apt update -y && apt upgrade -y
#
# Make a Gitclones Directory
mkdir -p Gitclones
#
# Go into directory
cd Gitclones
#
# Git Clone Wifi Pumpkin
yes | git clone https://github.com/P0cL4bs/WiFi-Pumpkin.git
#
# Go into Wifi-Pumpkin directory
cd WiFi-Pumpkin
#
# Install pip
yes | apt install python-pip
#
# Install requirements with pip
yes | pip install -r requirements.txt
#
# Install other dependencies
yes | apt-get install python-dev python-setuptools libpcap0.8-dev libnetfilter-queue-dev libssl-dev libjpeg-dev libxml2-dev libxslt1-dev libcapstone3 libcapstone-dev libffi-dev file
#
# Install virtualenvwrapper
yes | pip install virtualenvwrapper
#
# Edit your .bashrc or .zshrc file to source the virtualenvwrapper.sh script
yes | source /usr/bin/virtualenvwrapper.sh
#
# Create your virtualenv
yes | mkvirtualenv MITMf -p /usr/bin/python2.7
#
# Initialize and clone the repos submodules:
yes | git submodule init
yes | git submodule update --recursive
#
#Give script execute permission
chmod +x installer.sh
#
#Run wifi-pumpkin installer
yes | ./installer.sh --install
#
#Give script execute permission
chmod +x wifi-pumpkin.py
#
#Run wifi-pumpkin
python wifi-pumpkin.py
#
#
echo
echo
echo
echo The tool is installed, have fun.
echo
echo To run tool: python wifi-pumpkin.py
echo wifi-pumpkin.py script is located in /Gitclones/WiFi-Pumpkin/
#Everything is installed now
