#!/bin/sh

### How to deal with ubuntu:
#### https://www.howtogeek.com/63997/how-to-install-programs-in-ubuntu-in-the-command-line/
#### https://askubuntu.com/questions/40779/how-do-i-install-a-deb-file-via-the-command-line

# Add repo for Peeky GIF recorder
sudo add-apt-repository ppa:peek-developers/stable -y
# Update and Upgrade package lists right off the bat
sudo -v || exit
sudo apt-get update
sudo -v || exit
sudo apt-get upgrade

# Ubuntu missing stuff
sudo -v || exit
UBUNTU_MISSING="build-essential gnome-tweaks gdebi git expect peek"
sudo apt-get install -y $UBUNTU_MISSING

# ZSH installation and basic shell stuff
UBUNTU_BASIC_SHELL="zsh terminator"
sudo apt-get install -y $UBUNTU_BASIC_SHELL
chsh -s $(which zsh)

# Snapcraft / Snappy package mngmt
sudo -v || exit
sudo apt-get install snapd -y

##### to be fixed
# sudo spawn snap login ${SNAP_USER}
# expect "*?Password:*"
# send -- "$SNAP_PASSWORD\r"
# # send blank line (\r) to make sure we get back to gui
# send -- "\r"
# expect eof
##### to be fixed

# Snap packages
snap install spotify
snap install slack --classic
snap install vscode --classic

# Chrome installation
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb

# NVM installation
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | sh

# NVM config
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
command -v nvm
# Installs node latest version
nvm install --lts
npm -g install npm
npm -g install yarn

# Oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

## VS Code extensions
code --install-extension andys8.jest-snippets
code --install-extension burkeholland.simple-react-snippets
code --install-extension christian-kohler.path-intellisense
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension esbenp.prettier-vscode
code --install-extension glen-84.sass-lint
code --install-extension joshpeng.sublime-babel-vscode
code --install-extension joshpeng.theme-charcoal-oceanicnext
code --install-extension robertohuertasm.vscode-icons
code --install-extension robinbentley.sass-indented
code --install-extension shardulm94.trailing-spaces
code --install-extension spywhere.guides
code --install-extension t7yang.hyper-javascript-snippets
code --install-extension Tyriar.sort-lines

## revoke root timestamp
sudo -k