#!/bin/bash

# essentially just need to remove rules file and reload
sudo rm /etc/udev/rules.d/99-turboclone.rules

sudo udevadm control --reload-rules
sudo udevadm trigger