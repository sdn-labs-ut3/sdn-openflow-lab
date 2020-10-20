#!/usr/bin/env bash

echo "Provisioning guest VM..."

sudo apt-get update

sudo apt-get install -y --no-install-recommends --fix-missing\
  build-essential \
  mininet \
  openvswitch-switch \
  python3-pip \
  python3-virtualenv \
  xauth \
  xterm

# ---- Install virtualenv ----
# pip3 install virtualenv

# ---- Install RYU ----
virtualenv ryuenv
source ~/ryuenv/bin/activate
pip install ryu
deactivate

# ---- Setup folder lab ----
mkdir ~/tpsdn
cp ~/ryuenv/lib/python3.6/site-packages/ryu/app/simple_switch_13.py ~/tpsdn/

echo "**** DONE PROVISIONING VM ****"
