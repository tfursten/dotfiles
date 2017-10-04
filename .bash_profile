########################
###### MY ALIASES ######
########################
alias gst="git status"
alias gco="git checkout"
alias gcm="git commit -m"
alias gad="git add"
alias gpl="git pull"
alias gpu="git push"
alias lesss="less -S"
alias ll="ls -lah"
alias ls="ls -G"
# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

#refresh shell
alias reload="source ~/.bash_profile"

alias back="cd -"
alias fof="cd ~/Desktop/Fofanov_Projects/"
alias hvr="cd ~/Desktop/Fofanov_Projects/HVRI/"
alias ip="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/&&print$1'"

alias hines="ssh tfursten@hines.scit.us"
alias herschel="ssh tfursten@herschel.scit.us"
alias monsoon="ssh tf362@monsoon.hpc.nau.edu"

alias update="sudo apt-get update && sudo apt-get upgrade"
alias please='sudo "$BASH" -c "$(history -p !!)"'

alias nb="jupyter notebook"

# added by Anaconda2 4.1.1 installer
export PATH="/Users/tarafurstenau/anaconda/bin:$PATH"

# for Postgres app for Heroku
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

export PS1="\`if [ \$? = 0 ]; then echo \[⭐️; else echo \[🔥 ;fi\` \e[0;35m\] [\W] $ \e[m\\]"



# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

BROWSER=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
export BROWSER