#!/bin/bash

# Stop and disable the service
sudo systemctl stop asus-screenpad-brightness.service
sudo systemctl disable asus-screenpad-brightness.service

# Remove the service file
sudo rm /lib/systemd/system/asus-screenpad-brightness.service

# Remove the executable
sudo rm /usr/local/bin/asus-screenpad-brightness

# Reload systemd to recognize changes
sudo systemctl daemon-reload

