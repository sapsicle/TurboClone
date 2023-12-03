#!/bin/bash

# absolute path to script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# path to udev rules file
RULES_FILE="/etc/udev/rules.d/99-turboclone.rules"

# path to the mounting script dynamically
# specifying this will cause the rules file to run the mount script automatically
MOUNT_SCRIPT_PATH="$SCRIPT_DIR/mount.sh"

# content for udev rules
RULE_CONTENT="SUBSYSTEM==\"block\",
KERNEL==\"sd*|hd*|fd*|ZIP*|lp*|vd*|parport*\",
ACTION==\"add\",
RUN+=\"$MOUNT_SCRIPT_PATH %k\""

# create rules file
sudo touch "$RULES_FILE"

# write rule to rules file
echo "$RULE_CONTENT" | sudo tee "$RULES_FILE" > /dev/null

# reload udev rules
sudo udevadm control --reload-rules
sudo udevadm trigger