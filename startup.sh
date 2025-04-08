#! /usr/bin/bash
echo "Starting VNC, Please Wait..."
sudo apt update && sudo apt install tigervnc-standalone-server qemu-kvm firefox openbox neofetch kitty
git clone https://github.com/novnc/noVNC.git
cd noVNC
sudo vncserver -SecurityType none -xstartup "openbox" -rfbport 5080
./utils/novnc_proxy --vnc 127.0.0.1:5080 --listen localhost:8000
