echo "This script assumes you have Git installed in your system!" 
git clone https://github.com/modus-theme/gnome-terminal
cd gnome-terminal
chmod +x ./install-vivendi.sh
chmod +x ./install-operandi.sh
./install-vivendi.sh
./install-operandi.sh
exit 0
