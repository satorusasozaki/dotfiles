# show git branch
# https://github.com/jimeh/git-aware-prompt
export GITAWAREPROMPT=~/dotfiles/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\[\033[32m\]\W \[$txtylw\]\$git_branch\[\033[0m\]$ \[\033[0m\]"
export NVIM_TUI_ENABLE_TRUE_COLOR=1
source ~/.git-completion.bash
export NVM_DIR="/Users/satoru/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
alias ls='ls -G'
export LSCOLORS=gxfxcxdxbxegedabagacad
export PATH=/usr/local/bin:$PATH

# for golang
export GOPATH=~/.go
export PATH=$PATH:$GOPATH/bin

# for Ruby
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias figevil='cd /Users/satorusasozaki/Dropbox/Code/SunsetHQ/figevil && open . -a xcode'
# Make git editor to neovim
export VISUAL=nvim
export EDITOR="$VISUAL"
export JEKYLL_ENV="staging"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
