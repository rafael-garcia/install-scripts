#!/bin/sh

## Homebrew:
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Shell Basics: ZSH
brew update
brew install tree zsh zsh-completions
chsh -s $(which zsh)

### Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

### Brew Casks:
brew cask install firefox google-chrome google-drive \
    iterm2 java licecap 1password caffeine intel-power-gadget spotify \
    postman slack visual-studio-code spectacle sublime-text vlc

## NVM installation
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | sh

### NVM config
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# Installs node latest version
nvm install --lts
npm -g install npm
npm -g install yarn

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
