#if [ -f `brew --prefix`/etc/bash_completion ]; then
#   . `brew --prefix`/etc/bash_completion
#    echo OK
#fi
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
