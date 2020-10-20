#!/usr/bin/env bash

echo "Provisioning guest VM..."

sudo apt-get update

sudo apt-get install -y --no-install-recommends --fix-missing\
  build-essential \
  mininet \
  openvswitch-switch \
  python3-pip \
  python3-virtualenv \
  virtualenv \
  xauth \
  xterm

# ---- Install RYU ----
virtualenv -p /usr/bin/python3 ryuenv
source ~/ryuenv/bin/activate
pip install ryu
deactivate

# ---- Setup folder lab ----
git clone https://github.com/elavinal/sdn-openflow-lab.git

echo "**** DONE PROVISIONING VM ****"
