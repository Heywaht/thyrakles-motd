#!/bin/bash

# Install packages
apt update -y 
apt install toilet -y
apt install update-notifier -y

# Download the archive
curl -L https://github.com/Heywaht/thyrakles-motd/archive/master.tar.gz | tar -zxv

# Move old motd files to directory
mkdir /etc/update-motd.d/old-motd
mv /etc/update-motd.d/* /etc/update-motd.d/old-motd

# Move unzipped motd files to /etc
mv thyrakles-motd-master/motd/* /etc/update-motd.d

# Clean up downloaded files
rm -rf thyrakles-motd-master
