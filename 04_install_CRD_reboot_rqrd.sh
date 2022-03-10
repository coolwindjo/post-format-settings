wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
# wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
# sudo dpkg -i chrome-remote-desktop_current_amd64.deb
sudo apt-get install -f -y
mkdir -p ~/.config/chrome-remote-desktop
sudo addgroup chrome-remote-desktop
sudo usermod -a -G chrome-remote-desktop $USER
