#!/usr/bin/env bash
#Running Cloud9 Desktop Cloud9 SDK as a stand alone application 
#Download the SDK 
cd ~/
git clone https://github.com/c9/core.git c9sdk
#install the dependencies of the SDK 
cd c9sdk
./scripts/install-sdk.sh
#You can run the install-sdk.sh script also to update the SDK to the latest version.
