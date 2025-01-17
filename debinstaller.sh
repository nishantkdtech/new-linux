echo "A network connection is required."
echo "Niko's Installer, v.1.0.0"
echo "This installation will take ~400mb of space"

echo "Installing prerequisites and updating..."
sudo apt-get update

# vim
echo "Installing ViM..."
sudo apt-get install vim

# python
echo "Installing Python 3..."
python3 --version
sudo apt-get install python3.6
wget https://bootstrap.pypa.io/get-pip.py

# pip
echo "Installing pip..."
python3 ./get-pip.py

# jupyter
echo "Installing jupyter notebook..."
pip install notebook

# flatpak and flathub
echo "Enabling Flathub repo..."
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# universe
echo "Enabling Universe repo..."
sudo add-apt-repository universe

# gnome-tweaks
echo "Installing gnome-tweaks..."
sudo apt install gnome-tweaks

# snap store
echo "Installing the snap store..."
sudo apt install snapd
sudo snap install snap-store

# set some nice vim customizations
echo "set tabstop=4
set shiftwidth=4
set expandtab
se nu" >> ~/.vimrc

# git
echo "Installing git..."
sudo apt install git-all

# XFCE
if [[ $* == *-xfce* ]]; then
  echo "Installing XFCE desktop..."
  sudo apt-get install xfce4
fi

# zsh
if [[ $* == *-zsh* ]]; then
  echo "Installing zshell..."
  sudo apt install zsh
fi
