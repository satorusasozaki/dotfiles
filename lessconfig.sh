#!/bin/sh

# After downloading Xcode
sudo xcodebuild -license # agree with license
xcode-select --install # Install command line tool

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew list 'git' || brew install 'git'
brew list 'bash-completion' || brew install 'bash-completion'
brew list 'tree' || brew install 'tree'

# Casks
brew cask list 'iterm2' || brew cask install 'iterm2'
brew cask list 'alfred' || brew cask install 'alfred'
brew cask list 'dropbox' || brew cask install 'dropbox'
brew cask list '1password' || brew cask install '1password'
brew cask list 'google-chrome' || brew cask install 'google-chrome'
brew cask list 'evernote' || brew cask install 'evernote'
brew cask list 'slack' || brew cask install 'slack'
brew cask list  'flux' || brew cask install 'flux'
brew cask list  'atom' || brew cask install 'atom'
#brew cask list 'vlc' || brew cask install 'vlc'
brew cask list  'skype' || brew cask install 'skype'
brew cask list 'spotify' || brew cask install 'spotify'
#brew cask list 'kindle' || brew cask install 'kindle'

# Jenkins
#brew cask list 'java' || brew cask install 'java'
#brew list 'wget' || brew install 'wget'

brew list 'mas' || brew install 'mas'
mas install 417375580 # BetterSnapTool
mas install 410628904 # Wunderlist
#mas install 961632517 # Be Focused Pro
#mas install 1003160018 # quip

mkdir ~/dotfiles/.bash/
cd ~/dotfiles/.bash/
git clone git://github.com/jimeh/git-aware-prompt.git

# Move code snippets to Xcode
cp -R ~/dotfiles/CodeSnippets ~/Library/Developer/Xcode/UserData/

brew list 'ruby' || brew install 'ruby'
sudo gem install 'cocoapods'
sudo gem install 'jekyll'

# Make symlinks
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/Brewfile ~/Brewfile
ln -sf ~/dotfiles/.config ~/.config
ln -sf ~/dotfiles/.git-completion.bash ~/.git-completion.bash
