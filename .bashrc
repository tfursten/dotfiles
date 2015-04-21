source /etc/bash.bashrc

########################
###### MY ALIASES ######
########################
alias gst="git status"
alias gco="git checkout"
alias gcm="git commit -m"
alias gad="git add"
alias gpl="git pull"
alias gpu="git push"

alias ll="ls -lah"

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

#refresh shell
alias reload="source ~/.bashrc"

alias back="cd -"
alias projects="cd ~/Desktop/Projects"
alias pibd="cd ~/Desktop/Projects/IBDsrc"
alias pnbmcmc="cd ~/Desktop/Projects/nbmcmc"
alias psi="cd ~/Desktop/Projects/SI-cpp"

alias ip="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/&&print$1'"

alias hines="ssh tara@hines.scit.us"
alias hershcel="ssh tara@herschel.scit.us"


alias update="sudo apt-get update && sudo apt-get upgrade"
alias now='sudo "$BASH" -c "$(history -p !!)"'

export PATH=./:$HOME/OpenBUGS323/bin:$PATH

# added by Anaconda 2.1.0 installer
export PATH="/home/tara/anaconda/bin:$PATH"

#export PS1="\e[1;31m$PS1 \e[m"
