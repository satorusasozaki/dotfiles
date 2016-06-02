export PS1="\[\033[32m\]\W \[\033[0m\]$ \[\033[0m\]"
export NVIM_TUI_ENABLE_TRUE_COLOR=1
source ~/.git-completion.bash
export NVM_DIR="/Users/satoru/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
alias ls='ls -G'
export LSCOLORS=gxfxcxdxbxegedabagacad

# for python
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Devel
export PATH=/usr/local/bin:$PATH

# for golang
export GOPATH=~/.go
export PATH=$PATH:$GOPATH/bin

# for Ruby
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

