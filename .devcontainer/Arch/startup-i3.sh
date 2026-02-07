#!/usr/bin/env bash
set -e

echo "Starting virtual display..."
Xvfb :0 -screen 0 1024x768x24 &

export DISPLAY=:0

echo "Starting i3 window manager..."
su - arch -c "i3 &"

echo "Starting VNC server..."
x11vnc -display :0 -nopw -forever -shared -rfbport 5900 &

echo "Starting noVNC on port 6080..."
/usr/share/noVNC/utils/novnc_proxy.sh --vnc localhost:5900 --listen 0.0.0.0:6800 --web /usr/share/noVNC &

echo ""
echo "GUI environment is ready!"
echo "Go to the Ports tab, set port 6080 to Public, and open the link."

# Keep container alive
wait
