echo "This script assumes you have Git installed in your system!" 
git clone https://github.com/modus-theme/gnome-terminal
cd gnome-terminal
chmod +x ./install-vivendi.sh
chmod +x ./install-operandi.sh
./install-vivendi.sh
./install-operandi.sh
echo "This script also assumes that you are still inside the gnome-terminal directory, created by this script, so be careful! (If you lose files and/or directories, it's not my fault"
exit 0
