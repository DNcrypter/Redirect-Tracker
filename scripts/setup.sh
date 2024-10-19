#!/bin/bash

# Rename the Redirect-Tracker.py file to Redirect-Tracker
mv Redirect-Tracker.py Redirect-Tracker

# Move the Redirect-Tracker file to /usr/local/bin   X
# sudo mv Redirect-Tracker /usr/local/bin/

# create link to use from anywhere. it is right way
sudo ln ./Redirect-Tracker /usr/local/bin/Redirect-Tracker


# Make the Redirect-Tracker file executable
sudo chmod +x /usr/local/bin/Redirect-Tracker

# Remove the Redirect-Tracker.pyc file if it exists
if [ -f Redirect-Tracker.pyc ]; then
    rm Redirect-Tracker.pyc
fi

# install all dependencies
pip install requirement.txt

echo "Redirect-Tracker has been installed successfully!"