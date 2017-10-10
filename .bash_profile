
#   Colors
#   ------------------------------------------------------------
#   Set Text Formatting
    BOLD="\[\e[1m\]"
#   Set Text Foreground Colors
    RED="\[\e[31m\]"
    L_RED="\[\e[91m\]"
    DIM="\[\e[2m\]"
    BLUE="\[\e[34m\]"
    MAGENTA="\[\e[35m\]"
    CYAN="\[\e[36m\]"
    L_CYAN="\[\e[96m\]"
    YELLOW="\[\e[33m\]"
    L_YELLOW="\[\e[93m\]"
    ORANGE="\[\e[38;5;215m\]"
    L_GREEN="\[\e[92m\]"
    GREEN="\[\e[32m\]"
    L_GRAY="\[\e[37m\]"
    D_GRAY="\[\e[90m\]"
    WHITE="\[\e[97m\]"
#   Disable Colors
    Rcol="\[\e[0m\]"  ## Disables all above attributes
    
#   Prompt
#   ------------------------------------------------------------

    PROMPT_COMMAND=__prompt_command
    
    function __prompt_command() {
      local EXIT="$?"
#     Return Status Badges
      local ENABLE_EMOJI=true
      local SUCCESS_BADGE="${L_GREEN}✔${Rcol} "
      local EMOJI_SUCCESS_BADGE="⭐️  "
      local FAIL_BADGE="${L_RED}✸${Rcol} "
      local EMOJI_FAIL_BADGE="🔥  "

      local Path="${MAGENTA}\w${Rcol}"

#     Use Emojis if Enabled
      if ${ENABLE_EMOJI}; then
        SUCCESS_BADGE=${EMOJI_SUCCESS_BADGE}
        FAIL_BADGE=${EMOJI_FAIL_BADGE}
      fi
      local BADGE=$([ ${EXIT} != 0 ] && echo ${FAIL_BADGE} || echo ${SUCCESS_BADGE})

#     Git Integration
      local Git_Branch=`my_git_branch`
      local Git_Status=`my_git_status`
      local Mod=$(echo ${Git_Status} | tr ':' '\n' | grep -c "M")
      if [ "${Mod}" -gt 0 ]; then Mod="${YELLOW}●${Rcol}"; else Mod="${L_GREEN}●${Rcol}"; fi

#     Build PS1 String
      PS1="\n"
      PS1+="${WHITE}┌─${Rcol} ${BADGE}  ${WHITE}[${Rcol}${Path}${WHITE}]${Rcol}"
      if [ ! "${Git_Branch}" == "" ]; then
        Git_Branch="${CYAN}${Git_Branch}${Rcol}"
        PS1+=" (${Git_Branch} ${Mod})"; fi
      PS1+="\n${WHITE}└─► ${Rcol}${MAGENTA}$ ${Rcol}"
    }


function my_git_branch(){
    echo `git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
}

function my_git_status(){
  # Get status and branch and replace newline (\n) with colon (:)
  local Status="$(git status --porcelain 2>/dev/null | tr '\n' ':')"
  echo ${Status}
}





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






# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# added by Anaconda2 4.1.1 installer
export PATH="/Users/tarafurstenau/anaconda/bin:$PATH"

# for Postgres app for Heroku
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"


BROWSER=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
export BROWSER
