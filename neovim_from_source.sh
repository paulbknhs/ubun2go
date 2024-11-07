sudo apt remove -y neovim
sudo apt install -y ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim /tmp/neovim
cd /tmp/neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build
cpack -G DEB
sudo dpkg -i --force-overwrite  nvim-linux64.deb
