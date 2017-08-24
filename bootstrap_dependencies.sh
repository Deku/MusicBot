#!/bin/bash

# Update headers
apt-get update
apt-get upgrade

# Install dependencies
apt-get install build-essential unzip -y
apt-get install software-properties-common -y

add-apt-repository ppa:fkrull/deadsnakes -y
add-apt-repository ppa:mc3man/trusty-media -y
add-apt-repository ppa:chris-lea/libsodium -y

apt-get update -y
apt-get install git python python3.5-dev ffmpeg libopus-dev libffi-dev libsodium-dev -y
apt-get upgrade -y

# Install python dependencies
apt-get install python3-setuptools
python3.5 /usr/lib/python3/dist-packages/easy_install.py pip
python3.5 -m pip install --upgrade -r /vagrant/requirements.txt
