export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export PROJECT=/Users/vs/Project
source $PROJECT/function.sh
# Z location
. /usr/local/etc/profile.d/z.sh
# Sets custom prompt
#export PS1="\u@\h:\[\e[1;34m\]\W\[\e[m\]\[\033[0;32m\]$(git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / /" | sed "s/$//")\[\033[0m\]\$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
