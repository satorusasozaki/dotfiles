#!/bin/sh

# After downloading Xcode
sudo xcodebuild -license # agree with license
xcode-select --install # Install command line tool

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew install 'git'
brew install 'bash-completion'
brew install 'tree'
brew install 'node'
brew install 'mpg123'
brew install 'neovim'

# Jenkins
brew cask install 'java'
brew install 'jenkins'
brew install 'wget'

# Casks
brew cask install 'vlc'
brew cask install 'google-chrome'
brew cask install 'dropbox'
brew cask install 'alfred'
brew cask install 'evernote'
brew cask install 'flux'
brew cask install 'skype'
brew cask install 'virtualbox'
brew cask install 'slack'
brew cask install 'spotify'
brew cask install 'kindle'
brew cask install '1password'
brew cask install 'iterm2'
brew cask install 'calibre'
brew cask install 'dash'
brew cask install 'atom'
brew cask install 'edgeview'
brew cask install 'google-drive'
brew cask install 'firefox'
brew cask install 'skitch'
brew cask install 'licecap'
brew cask install 'macdown'
brew cask install 'keybase'

# To convert mov to gif
# https://gist.github.com/dergachev/4627207
brew cask install 'xquartz'
brew cask install 'fluid'
brew install 'gifsicle'

# for react native to run the facebook F8 app
# https://github.com/fbsamples/f8app
brew install 'watchman' # https://facebook.github.io/watchman/docs/install.html
brew install 'flow' # http://www.flowtype.org/
brew install 'mongodb' # https://www.mongodb.org/downloads#production

brew install 'go'
brew install 'python'
brew install 'python3'

brew install 'mas'
mas install 417375580 # BetterSnapTool
mas install 823766827 # OneDrive
mas install 539883307 # LINE
mas install 410628904 # Wunderlist
mas install 961632517 # Be Focused Pro
mas install 404478020 # OmniOutliner
mas install 775737590 # ai writer
mas install 1003160018 # quip
mas install 1028905953 # betternet

# Config github
git config --global user.name satorusasozaki
git config --global user.email sasozakisatoru@gmail.com

# Make symlinks
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.nvimrc ~/.nvimrc
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/Brewfile ~/Brewfile
ln -sf ~/dotfiles/.config ~/.config
ln -sf ~/dotfiles/.git-completion.bash ~/.git-completion.bash
