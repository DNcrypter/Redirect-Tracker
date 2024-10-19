#!/bin/bash

# Rename the Redirect-Tracker.py file to Redirect-Tracker
mv Redirect-Tracker.py Redirect-Tracker


# Move the Redirect-Tracker file to /usr/local/bin
sudo mv Redirect-Tracker /usr/local/bin/

# Make the Redirect-Tracker file executable
sudo chmod +x /usr/Redirect-Trackerl/bin/Redirect-Tracker

# Remove the Redirect-Tracker.pyc file if it exists
if [ -f Redirect-Tracker.pyc ]; then
    rm Redirect-Tracker.pyc
fi

# install all dependencies
pip install requirement.txt

echo "Redirect-Tracker has been installed successfully!"