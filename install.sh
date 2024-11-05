#!/bin/sh

# Copy asus-screenpad-brightness.service to /lib/systemd/system/
sudo cp asus-screenpad-brightness.service /lib/systemd/system/

# Copy asus-screenpad-brightness to /usr/local/bin and make it executable
sudo cp asus-screenpad-brightness /usr/local/bin/
sudo chmod +x /usr/local/bin/asus-screenpad-brightness

# Reload systemd to recognize the new service
sudo systemctl daemon-reload

# Enable and start the service
sudo systemctl enable asus-screenpad-brightness.service
sudo systemctl start asus-screenpad-brightness.service


