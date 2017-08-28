#!/bin/sh

# After downloading Xcode
sudo xcodebuild -license # agree with license
xcode-select --install # Install command line tool

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew install 'git'
brew install 'bash-completion'
brew install 'tree'

# Casks
brew cask install 'iterm2'
brew cask install 'alfred'
brew cask install 'dropbox'
brew cask install '1password'
brew cask install 'google-chrome'
brew cask install 'evernote'
brew cask install 'slack'
brew cask install 'flux'
brew cask install 'atom'
brew cask install 'vlc'
brew cask install 'skype'
brew cask install 'spotify'
brew cask install 'kindle'

# Jenkins
brew cask install 'java'
brew install 'wget'

brew install 'mas'
mas install 417375580 # BetterSnapTool
mas install 410628904 # Wunderlist
mas install 961632517 # Be Focused Pro
mas install 1003160018 # quip

mkdir ~/dotfiles/.bash/
cd ~/dotfiles/.bash/
git clone git://github.com/jimeh/git-aware-prompt.git

# Make symlinks
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/Brewfile ~/Brewfile
ln -sf ~/dotfiles/.config ~/.config
ln -sf ~/dotfiles/.git-completion.bash ~/.git-completion.bash
