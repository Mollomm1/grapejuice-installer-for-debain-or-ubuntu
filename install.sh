# by @Mollomm1#0001
# you can do EVERYTHING you want with this.
echo '-------------------------------------------'
echo ' grapejuice-installer-for-debain-or-ubuntu'
echo '-------------------------------------------'
sleep 4
sudo dpkg --add-architecture i386 
sudo apt update
sudo apt install -y curl
curl https://gitlab.com/brinkervii/grapejuice/-/raw/master/ci_scripts/signing_keys/public_key.gpg | sudo tee /usr/share/keyrings/grapejuice-archive-keyring.gpg > /dev/null
sudo tee /etc/apt/sources.list.d/grapejuice.list <<< 'deb [signed-by=/usr/share/keyrings/grapejuice-archive-keyring.gpg] https://brinkervii.gitlab.io/grapejuice/repositories/debian/ universal main' > /dev/null
sudo apt update
sudo apt install -y wine grapejuice p7zip p7zip-full
grapejuice gui & sleep 5; cd /tmp; wget https://pastebin.com/raw/5SeVb005 -O install.py; python3 install.py
clear
echo 'Installation Complete !, you can now run Roblox!'
echo ' '
echo "[NOTE] If you get : 'your computer’s graphics card is not compatible with Roblox’s minimum system requirement' try enable DXVK 3D3 and select OpenGL as Roblox Render"
sleep 10
