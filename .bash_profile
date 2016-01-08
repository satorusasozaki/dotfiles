if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
