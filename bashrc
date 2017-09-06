
[[ $- != *i* ]] && return

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

#export EDITOR=vim

alias ne='emacs -nw'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias perl_replace='perl -0777 -pe'

export BASH_IT=~/afs/tools/bash-it/

if [ -d "${BASH_IT}" ]; then
   export BASH_IT_THEME='minimal'
   . $BASH_IT/bash_it.sh
fi
